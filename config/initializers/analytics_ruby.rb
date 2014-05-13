Analytics = AnalyticsRuby       # Alias for convenience
Analytics.init({
    secret: ENV['SEGMENT_IO_ATRIANGLE'],          # The write key for atriangle/atriangle
    on_error: Proc.new { |status, msg| print msg }  # Optional error handler
})