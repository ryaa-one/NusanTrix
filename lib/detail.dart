import 'package:flutter/material.dart';

class DetailPageNew extends StatefulWidget {
  final String imagePath;
  final String location;
  final String seller;
  final String title;
  final String price;
  final String priceUnit;
  final String description;

  const DetailPageNew({
    Key? key,
    required this.imagePath,
    required this.location,
    required this.seller,
    required this.title,
    required this.price,
    required this.priceUnit,
    required this.description,
  }) : super(key: key);

  @override
  State<DetailPageNew> createState() => _DetailPageNewState();
}

class _DetailPageNewState extends State<DetailPageNew> {
  int _selectedFlavor = 0;
  bool _isLiked = false;
  bool _isSaved = false;
  bool _isExpanded = false;

  final ScrollController _scrollController = ScrollController();
  final double _minImageHeight = 120.0; // Minimum tinggi gambar yang terlihat
  double _contentOffset = 0.0; // Offset untuk konten putih

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    // Jika scroll ke atas dari posisi 0, kembalikan konten putih ke bawah
    if (_scrollController.offset <= 0 && _contentOffset > 0) {
      setState(() {
        _contentOffset += _scrollController.offset;
        if (_contentOffset < 0) _contentOffset = 0;
      });
      _scrollController.jumpTo(0);
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final maxDrag = 480 - _minImageHeight;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image - FIXED POSITION
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 480,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Draggable Content
            Positioned.fill(
              child: NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification is ScrollUpdateNotification) {
                    // Jika mencoba scroll ke atas saat scroll position = 0
                    if (_scrollController.position.pixels <= 0 &&
                        notification.scrollDelta! < 0 &&
                        _contentOffset > 0) {
                      setState(() {
                        _contentOffset += notification.scrollDelta!;
                        if (_contentOffset < 0) _contentOffset = 0;
                      });
                      return true;
                    }
                  }

                  if (notification is OverscrollNotification) {
                    // Handle overscroll ke atas (pull down)
                    if (notification.overscroll < 0 && _contentOffset > 0) {
                      setState(() {
                        _contentOffset += notification.overscroll;
                        if (_contentOffset < 0) _contentOffset = 0;
                      });
                      return true;
                    }
                  }
                  return false;
                },
                child: GestureDetector(
                  onVerticalDragUpdate: (details) {
                    // Jika belum mentok, drag konten putih
                    if (_contentOffset < maxDrag) {
                      setState(() {
                        _contentOffset -= details.delta.dy;
                        // Batasi offset antara 0 dan maxDrag
                        if (_contentOffset < 0) _contentOffset = 0;
                        if (_contentOffset > maxDrag) _contentOffset = maxDrag;
                      });
                    }
                  },
                  onVerticalDragEnd: (details) {
                    // Snap ke posisi terdekat jika drag tidak cukup jauh
                    setState(() {
                      if (_contentOffset < maxDrag * 0.3 &&
                          details.velocity.pixelsPerSecond.dy > 0) {
                        _contentOffset = 0;
                      }
                    });
                  },
                  child: Stack(
                    children: [
                      // White Content Container
                      Positioned(
                        top: 480 - 24 - _contentOffset,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                          ),
                          child: SingleChildScrollView(
                            controller: _scrollController,
                            physics: _contentOffset >= maxDrag
                                ? const BouncingScrollPhysics()
                                : const NeverScrollableScrollPhysics(),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 32,
                                right: 32,
                                top: 32,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Location Badge
                                  Container(
                                    height: 48,
                                    padding: const EdgeInsets.only(
                                      left: 16,
                                      right: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF5F5F5),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.location_on,
                                          color: Color(0xFFFF5252),
                                          size: 20,
                                        ),
                                        const SizedBox(width: 8),
                                        Flexible(
                                          child: Text(
                                            widget.location,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF212121),
                                              height: 1.0,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  // Seller
                                  Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFF5252),
                                        ),
                                        child: const Icon(
                                          Icons.store,
                                          color: Color(0xFFFFFFFF),
                                          size: 14,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Flexible(
                                        child: Text(
                                          widget.seller,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFFF5252),
                                            height: 1.0,
                                            letterSpacing: 0.5,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  // Title
                                  Text(
                                    widget.title,
                                    style: const TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF212121),
                                      height: 1.2,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  // Price
                                  Wrap(
                                    crossAxisAlignment: WrapCrossAlignment.end,
                                    spacing: 4,
                                    children: [
                                      Text(
                                        widget.price,
                                        style: const TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFFF5252),
                                          height: 1.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 4,
                                        ),
                                        child: Text(
                                          widget.priceUnit,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF9E9E9E),
                                            height: 1.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 40),
                                  // Action Buttons
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      _ActionButton(
                                        icon: _isLiked
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        label: '1,2K',
                                        isActive: _isLiked,
                                        onTap: () => setState(
                                          () => _isLiked = !_isLiked,
                                        ),
                                      ),
                                      _ActionButton(
                                        icon: _isSaved
                                            ? Icons.bookmark
                                            : Icons.bookmark_border,
                                        label: '4,5K',
                                        isActive: _isSaved,
                                        onTap: () => setState(
                                          () => _isSaved = !_isSaved,
                                        ),
                                      ),
                                      _ActionButton(
                                        icon: Icons.share_outlined,
                                        label: 'SHARE',
                                        isActive: false,
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 40),
                                  // Description
                                  const Text(
                                    'Description',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF212121),
                                      height: 1.0,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.description,
                                        maxLines: _isExpanded ? null : 3,
                                        overflow: _isExpanded
                                            ? null
                                            : TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF757575),
                                          height: 1.6,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      GestureDetector(
                                        onTap: () => setState(
                                          () => _isExpanded = !_isExpanded,
                                        ),
                                        child: Text(
                                          _isExpanded
                                              ? 'Read less'
                                              : 'Read more',
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFFF5252),
                                            height: 1.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 40),
                                  // Flavor
                                  const Text(
                                    'Flavor',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF212121),
                                      height: 1.0,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        _FlavorChip(
                                          label: 'Pedas',
                                          isSelected: _selectedFlavor == 0,
                                          onTap: () => setState(
                                            () => _selectedFlavor = 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 60),
                                  // Contact Seller Button
                                  Center(
                                    child: Container(
                                      width: double.infinity,
                                      height: 64,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFF5252),
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.chat_bubble_outline,
                                            color: Color(0xFFFFFFFF),
                                            size: 24,
                                          ),
                                          SizedBox(width: 12),
                                          Text(
                                            'Hubungi Penjual',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFFFFFFFF),
                                              height: 1.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Back Button - Always on top
            Positioned(
              top: 40,
              left: 20,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0x80000000),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFFFFFFFF),
                    size: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: isActive ? const Color(0xFFFF5252) : const Color(0xFFBDBDBD),
            size: 28,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: isActive
                  ? const Color(0xFFFF5252)
                  : const Color(0xFFBDBDBD),
              height: 1.0,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _FlavorChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _FlavorChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFF5252) : const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: isSelected
                ? const Color(0xFFFF5252)
                : const Color(0xFFE0E0E0),
            width: 1.5,
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: isSelected
                  ? const Color(0xFFFFFFFF)
                  : const Color(0xFF212121),
              height: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}