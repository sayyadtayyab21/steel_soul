import 'package:flutter/material.dart';
import 'package:steel_soul/styles/urbanist_text_styles.dart';

/// Generic per-panel result row, independent of any feature-specific model.
class PanelResultData {
  const PanelResultData({
    required this.panelId,
    required this.message,
    required this.isSuccess,
  });

  final String panelId;
  final String message;
  final bool isSuccess;
}

/// Shared dialogs for any scan-result flow (Laser Cutting, Folding, etc).
/// Does not depend on any feature's own model classes — pass plain values.
class PanelResultDailog {
  PanelResultDailog._();

  // Palette
  static const _green = Color(0xFF1F9D55);
  static const _greenBg = Color(0xFFE8F7EE);
  static const _orange = Color(0xFFB8730F);
  static const _orangeBg = Color(0xFFFDF3DF);
  static const _red = Color(0xFFD1453B);
  static const _redBg = Color(0xFFFCEAE9);
  static const _dark = Color(0xFF14141A);
  static const _muted = Color(0xFF8E8E96);
  static const _cardBorder = Color(0xFFEDEDF0);

  /// Shows a scan result dialog.
  ///
  /// On success, pass [status] ('success' | 'partial' | 'error'),
  /// [total]/[success]/[failed] counts, and [results] (per-panel rows).
  ///
  /// On failure (only a flat error string, no structured data), pass just
  /// [fallbackMessage] and leave the rest null.
  ///
  /// [onDone] fires when the bottom button is tapped after a full success.
  /// [onRescan] fires with the list of failed panel IDs when the bottom
  /// button is tapped after a partial or full failure. Both are optional —
  /// if omitted, the dialog just closes.
  static void showScanResult(
    BuildContext context, {
    String? status,
    int? total,
    int? success,
    int? failed,
    List<PanelResultData>? results,
    String? fallbackMessage,
    VoidCallback? onDone,
    void Function(List<String> failedPanelIds)? onRescan,
  }) {
    final rows = results ?? _parseFallbackMessage(fallbackMessage ?? '');

    final resolvedTotal = total ?? _extractInt(fallbackMessage) ?? rows.length;
    final resolvedSuccess = success ?? rows.where((r) => r.isSuccess).length;
    final resolvedFailed = failed ?? rows.where((r) => !r.isSuccess).length;

    final isAllSuccess = resolvedFailed == 0 && resolvedSuccess > 0;
    final isAllFailed = resolvedSuccess == 0 && resolvedFailed > 0;

    final Color bannerColor;
    final Color bannerBg;
    final IconData bannerIcon;
    final String headline;
    final String subtext;

    if (isAllSuccess) {
      bannerColor = _green;
      bannerBg = _greenBg;
      bannerIcon = Icons.check_rounded;
      headline = '$resolvedSuccess/$resolvedTotal panels scanned';
      subtext = 'All panels saved successfully';
    } else if (isAllFailed) {
      bannerColor = _red;
      bannerBg = _redBg;
      bannerIcon = Icons.close_rounded;
      headline = '$resolvedSuccess/$resolvedTotal panels scanned';
      subtext = 'Nothing was saved — review the reasons below';
    } else {
      bannerColor = _orange;
      bannerBg = _orangeBg;
      bannerIcon = Icons.priority_high_rounded;
      headline = '$resolvedSuccess/$resolvedTotal panels scanned';
      subtext =
          '$resolvedFailed panel${resolvedFailed == 1 ? '' : 's'} '
          'need attention before you continue';
    }

    final buttonLabel =
        isAllSuccess
            ? 'Done'
            : isAllFailed
            ? 'Rescan All ($resolvedTotal)'
            : 'Rescan Failed ($resolvedFailed)';

    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.45),
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 24,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.12),
                  blurRadius: 32,
                  offset: const Offset(0, 12),
                ),
              ],
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 640),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Scrollable content: banner + results list
                  Flexible(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(18, 22, 18, 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Status banner
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: bannerBg,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 38,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    color: bannerColor,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: bannerColor.withOpacity(0.28),
                                        blurRadius: 10,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    bannerIcon,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        headline,
                                        style: UrbanistTextStyles.bodyMedium
                                            .copyWith(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 15.5,
                                              color: bannerColor,
                                              height: 1.2,
                                            ),
                                      ),
                                      const SizedBox(height: 3),
                                      Text(
                                        subtext,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: UrbanistTextStyles.bodySmall
                                            .copyWith(
                                              color: bannerColor.withOpacity(
                                                0.8,
                                              ),
                                              height: 1.3,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          if (rows.isNotEmpty) ...[
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  'SCAN RESULTS',
                                  style: UrbanistTextStyles.bodySmall
                                      .copyWith(
                                        color: _muted,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.8,
                                        fontSize: 11,
                                      ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: _cardBorder,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            ...rows.map(
                              (row) => Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: _resultTile(row),
                              ),
                            ),
                          ],
                          const SizedBox(height: 4),
                        ],
                      ),
                    ),
                  ),

                  // Fixed bottom button
                  Container(
                    padding: const EdgeInsets.fromLTRB(18, 12, 18, 20),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: _cardBorder, width: 1),
                      ),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _dark,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.of(dialogContext).pop();
                          if (isAllSuccess) {
                            onDone?.call();
                          } else {
                            final failedIds =
                                rows
                                    .where((r) => !r.isSuccess)
                                    .map((r) => r.panelId)
                                    .toList();
                            onRescan?.call(failedIds);
                          }
                        },
                        child: Text(
                          buttonLabel,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.5,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Widget _resultTile(PanelResultData row) {
    final Color color;
    final String chipLabel;
    if (row.isSuccess) {
      color = _green;
      chipLabel = 'DONE';
    } else if (row.message.toLowerCase().contains('already scanned')) {
      color = _orange;
      chipLabel = 'CHECK';
    } else {
      color = _red;
      chipLabel = 'FAILED';
    }
    final bg =
        row.isSuccess ? _greenBg : (color == _orange ? _orangeBg : _redBg);
    final icon =
        row.isSuccess
            ? Icons.check_rounded
            : (color == _orange
                ? Icons.priority_high_rounded
                : Icons.close_rounded);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: _cardBorder),
      ),
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(color: bg, shape: BoxShape.circle),
            child: Icon(icon, size: 15, color: color),
          ),
          const SizedBox(width: 11),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  row.panelId,
                  style: UrbanistTextStyles.bodySmall.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: const Color(0xFF1C1C22),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  row.message,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: UrbanistTextStyles.bodySmall.copyWith(
                    color: _muted,
                    fontSize: 11.5,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: bg,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              chipLabel,
              style: UrbanistTextStyles.bodySmall.copyWith(
                color: color,
                fontWeight: FontWeight.w800,
                fontSize: 10,
                letterSpacing: 0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void showLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.35),
      builder:
          (context) => Center(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 24,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: const CircularProgressIndicator(
                color: _dark,
                strokeWidth: 3,
              ),
            ),
          ),
    );
  }

  static List<PanelResultData> _parseFallbackMessage(String message) {
    final rows = <PanelResultData>[];
    final dashIndex = message.indexOf(' - ');
    if (dashIndex == -1) return rows;

    final detail = message.substring(dashIndex + 3);
    final entries = detail.split(';');

    for (final entry in entries) {
      final trimmed = entry.trim();
      if (trimmed.isEmpty) continue;

      final colonIndex = trimmed.indexOf(':');
      if (colonIndex == -1) continue;

      final panelId = trimmed.substring(0, colonIndex).trim();
      var panelMessage = trimmed.substring(colonIndex + 1).trim();
      if (!panelMessage.endsWith('.')) panelMessage = '$panelMessage.';

      final isSuccess = panelMessage.toLowerCase().contains('success');
      rows.add(
        PanelResultData(
          panelId: panelId,
          message: panelMessage,
          isSuccess: isSuccess,
        ),
      );
    }

    return rows;
  }

  static int? _extractInt(String? message) {
    if (message == null) return null;
    final match = RegExp(
      r'(\d+)/(\d+) panel\(s\) scanned',
    ).firstMatch(message);
    if (match == null) return null;
    final value = match.group(2);
    return value != null ? int.tryParse(value) : null;
  }
}