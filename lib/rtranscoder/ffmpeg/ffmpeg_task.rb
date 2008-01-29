require 'rprogram/task'

module RTranscoder
  #
  # ==FFmpegTask options:
  #
  # <tt>-refs</tt>:: <tt>ffmpeg.ref_frames_for_motion_compensation</tt>
  # <tt>-subcmp</tt>:: <tt>ffmpeg.sub_full_pel_motion_estimation_compare</tt>
  # <tt>-slang</tt>:: <tt>ffmpeg.subtitle_language_code</tt>
  # <tt>-shortest</tt>:: <tt>ffmpeg.shortest</tt>
  # <tt>-padright</tt>:: <tt>ffmpeg.pad_right</tt>
  # <tt>-mb_threshold</tt>:: <tt>ffmpeg.macroblock_threshold</tt>
  # <tt>-mpeg_quant</tt>:: <tt>ffmpeg.mpeg_quantizers</tt>
  # <tt>-dc</tt>:: <tt>ffmpeg.intra_dc_precision</tt>
  # <tt>-y</tt>:: <tt>ffmpeg.overwrite_output_files</tt>
  # <tt>-trellis</tt>:: <tt>ffmpeg.rate_distortion_optimal_quantization</tt>
  # <tt>-last_pred</tt>:: <tt>ffmpeg.motion_preditors_from_previous</tt>
  # <tt>-target</tt>:: <tt>ffmpeg.target</tt>
  # <tt>-isync</tt>:: <tt>ffmpeg.sync_read_on_input</tt>
  # <tt>-bug</tt>:: <tt>ffmpeg.bug</tt>
  # <tt>-vcodec</tt>:: <tt>ffmpeg.video_codec</tt>
  # <tt>-skip_bottom</tt>:: <tt>ffmpeg.skip_bottom_macroblock_rows</tt>
  # <tt>-vbsf</tt>:: <tt>ffmpeg.bitstream_filter</tt>
  # <tt>-ss</tt>:: <tt>ffmpeg.record_start_time</tt>
  # <tt>-bufsize</tt>:: <tt>ffmpeg.video_ratecontrol_buffer_size</tt>
  # <tt>--mv0_threshold</tt>:: <tt>ffmpeg.mv0_threshold</tt>
  # <tt>-deblockalpha</tt>:: <tt>ffmpeg.alphac0_deblocking</tt>
  # <tt>-pre_dia_size</tt>:: <tt>ffmpeg.pre_pass_diamond_type_and_size</tt>
  # <tt>-re</tt>:: <tt>ffmpeg.read_at_native_fps</tt>
  # <tt>-author</tt>:: <tt>ffmpeg.author</tt>
  # <tt>-newvideo</tt>:: <tt>ffmpeg.new_video_stream</tt>
  # <tt>-lowres</tt>:: <tt>ffmpeg.lowres_decode</tt>
  # <tt>-vframes</tt>:: <tt>ffmpeg.video_frames</tt>
  # <tt>-dct</tt>:: <tt>ffmpeg.dct_algorithm</tt>
  # <tt>-ar</tt>:: <tt>ffmpeg.audio_sampling_rate</tt>
  # <tt>-copyright</tt>:: <tt>ffmpeg.copyright</tt>
  # <tt>-max_prediction_order</tt>:: <tt>ffmpeg.max_prediction_order</tt>
  # <tt>-sc_factor</tt>:: <tt>ffmpeg.scene_change_modifier</tt>
  # <tt>-ibias</tt>:: <tt>ffmpeg.intra_quant_bias</tt>
  # <tt>-vglobal</tt>:: <tt>ffmpeg.video_global_header</tt>
  # <tt>-vdt</tt>:: <tt>ffmpeg.discard_threshold</tt>
  # <tt>-skip_ext</tt>:: <tt>ffmpeg.frame_skip_exponent</tt>
  # <tt>-scplx_mask</tt>:: <tt>ffmpeg.spatial_complexity_masking</tt>
  # <tt>-flags</tt>:: <tt>ffmpeg.flags</tt>
  # <tt>-acodec</tt>:: <tt>ffmpeg.audio_codec</tt>
  # <tt>-qdiff</tt>:: <tt>ffmpeg.qdiff</tt>
  # <tt>-aspect</tt>:: <tt>ffmpeg.aspect_ratio</tt>
  # <tt>-encoding_track</tt>:: <tt>ffmpeg.encoding_track</tt>
  # <tt>-lpc_coeff_precision</tt>:: <tt>ffmpeg.lpc_coefficient_precision</tt>
  # <tt>-context</tt>:: <tt>ffmpeg.video_encoding_context_model</tt>
  # <tt>-debug</tt>:: <tt>ffmpeg.debug</tt>
  # <tt>-muxpreload</tt>:: <tt>ffmpeg.initial_demux_delay</tt>
  # <tt>-comment</tt>:: <tt>ffmpeg.comment</tt>
  # <tt>-me</tt>:: <tt>ffmpeg.motion_estimation_method</tt>
  # <tt>-mblmax</tt>:: <tt>ffmpeg.max_macroblock_lag_range_factor</tt>
  # <tt>-ec</tt>:: <tt>ffmpeg.error_concealment</tt>
  # <tt>-alang</tt>:: <tt>ffmpeg.audio_language_code</tt>
  # <tt>-top</tt>:: <tt>ffmpeg.top</tt>
  # <tt>-cropleft</tt>:: <tt>ffmpeg.crop_left</tt>
  # <tt>-timecode_frame_start</tt>:: <tt>ffmpeg.gop_timecode_frame_start</tt>
  # <tt>-lmin</tt>:: <tt>ffmpeg.min_lag_range_factor</tt>
  # <tt>-g</tt>:: <tt>ffmpeg.group_picture_size</tt>
  # <tt>-deinterlace</tt>:: <tt>ffmpeg.deinterlace</tt>
  # <tt>-cpp</tt>:: <tt>ffmpeg.constant_quantization_parameter_rate_control</tt>
  # <tt>-vismv</tt>:: <tt>ffmpeg.visualize_motion_vectors</tt>
  # <tt>-scodec</tt>:: <tt>ffmpeg.subtitle_codec</tt>
  # <tt>-loop_output</tt>:: <tt>ffmpeg.loop_output</tt>
  # <tt>-padbottom</tt>:: <tt>ffmpeg.pad_bottom</tt>
  # <tt>-version</tt>:: <tt>ffmpeg.version</tt>
  # <tt>-packetsize</tt>:: <tt>ffmpeg.encoding_packet_size</tt>
  # <tt>-flags2</tt>:: <tt>ffmpeg.extra_flags</tt>
  # <tt>-vstats_file</tt>:: <tt>ffmpeg.log_video_coding_statistics</tt>
  # <tt>-rc_strategy</tt>:: <tt>ffmpeg.video_ratecontrol_method</tt>
  # <tt>-chromaoffset</tt>:: <tt>ffmpeg.chroma_gp_offset_from_luma</tt>
  # <tt>-mbcomp</tt>:: <tt>ffmpeg.marcoblock_compare_function</tt>
  # <tt>-vc</tt>:: <tt>ffmpeg.video_graph_channel</tt>
  # <tt>-dts_delta_threshold</tt>:: <tt>ffmpeg.dts_delta_threshold</tt>
  # <tt>-padcolor</tt>:: <tt>ffmpeg.pad_color</tt>
  # <tt>-nssew</tt>:: <tt>ffmpeg.nsse_weight</tt>
  # <tt>-rc_eq</tt>:: <tt>ffmpeg.video_rate_control</tt>
  # <tt>-vtag</tt>:: <tt>ffmpeg.force_video_tag</tt>
  # <tt>-t</tt>:: <tt>ffmpeg.record_for</tt>
  # <tt>-directpred 1</tt>:: <tt>ffmpeg.direct_mv_prediction</tt>
  # <tt>-inter_threshold</tt>:: <tt>ffmpeg.inter_threshold</tt>
  # <tt>-preme</tt>:: <tt>ffmpeg.pre_motion_estimation</tt>
  # <tt>-sameq</tt>:: <tt>ffmpeg.preserve_video_quality</tt>
  # <tt>-map</tt>:: <tt>ffmpeg.input_stream_mapping</tt>
  # <tt>-profile</tt>:: <tt>ffmpeg.encoding_profile</tt>
  # <tt>-rc_buf_aggressivity</tt>:: <tt>ffmpeg.currently_useless</tt>
  # <tt>-aframes</tt>:: <tt>ffmpeg.audio_frames</tt>
  # <tt>-title</tt>:: <tt>ffmpeg.title</tt>
  # <tt>-itsoffset</tt>:: <tt>ffmpeg.input_ts_offset</tt>
  # <tt>-compression_level</tt>:: <tt>ffmpeg.compression_level</tt>
  # <tt>-deblockbeta</tt>:: <tt>ffmpeg.beta_deblocking</tt>
  # <tt>-subq</tt>:: <tt>ffmpeg.sub_pel_motion_estimation_quality</tt>
  # <tt>-vsync</tt>:: <tt>ffmpeg.video_sync</tt>
  # <tt>-pix_fmt</tt>:: <tt>ffmpeg.pixel_format</tt>
  # <tt>-skip_threshold</tt>:: <tt>ffmpeg.frame_skip_threshold</tt>
  # <tt>-ac</tt>:: <tt>ffmpeg.audio_channels</tt>
  # <tt>-album</tt>:: <tt>ffmpeg.album</tt>
  # <tt>-r</tt>:: <tt>ffmpeg.fps</tt>
  # <tt>-lumi_mask</tt>:: <tt>ffmpeg.luminescence_mask</tt>
  # <tt>-dump</tt>:: <tt>ffmpeg.dump</tt>
  # <tt>-prediction_order_method</tt>:: <tt>ffmpeg.prediction_order_method</tt>
  # <tt>-b_sensitivity</tt>:: <tt>ffmpeg.b_frame_sensitivity</tt>
  # <tt>-pbias</tt>:: <tt>ffmpeg.inter_quant_bias</tt>
  # <tt>-copyts</tt>:: <tt>ffmpeg.copy_timestams</tt>
  # <tt>-rc_eq</tt>:: <tt>ffmpeg.rate_control_equation</tt>
  # <tt>-skipcmp</tt>:: <tt>ffmpeg.frame_skip_compare</tt>
  # <tt>-dark_mask</tt>:: <tt>ffmpeg.darkness_mask</tt>
  # <tt>-vol</tt>:: <tt>ffmpeg.audio_volume</tt>
  # <tt>-intra_matrix</tt>:: <tt>ffmpeg.intra_matrix</tt>
  # <tt>-croptop</tt>:: <tt>ffmpeg.crop_top</tt>
  # <tt>-encoding_year</tt>:: <tt>ffmpeg.encoding_year</tt>
  # <tt>-min_partition_order</tt>:: <tt>ffmpeg.min_audio_partition_order</tt>
  # <tt>-mbd</tt>:: <tt>ffmpeg.macroblock_decision_algorithm</tt>
  # <tt>-me_threshold</tt>:: <tt>ffmpeg.motion_estimation_threshold</tt>
  # <tt>-b</tt>:: <tt>ffmpeg.video_bitrate</tt>
  # <tt>-mepc</tt>:: <tt>ffmpeg.motion_estimation_bitrate_penalty</tt>
  # <tt>-pred</tt>:: <tt>ffmpeg.encoding_prediction_method</tt>
  # <tt>-atag</tt>:: <tt>ffmpeg.force_audio_tag</tt>
  # <tt>-benchmark</tt>:: <tt>ffmpeg.benchmark</tt>
  # <tt>-cropright</tt>:: <tt>ffmpeg.crop_right</tt>
  # <tt>-probesize</tt>:: <tt>ffmpeg.decoding_probe_size</tt>
  # <tt>-lmax</tt>:: <tt>ffmpeg.max_lag_range_factor</tt>
  # <tt>-cutoff</tt>:: <tt>ffmpeg.audio_bandwidth_cutoff</tt>
  # <tt>-psnr</tt>:: <tt>ffmpeg.calculate_psnr</tt>
  # <tt>-keyint_min</tt>:: <tt>ffmpeg.min_interval_between_idr_frames</tt>
  # <tt>-cmp</tt>:: <tt>ffmpeg.full_pel_motion_estimation_compare</tt>
  # <tt>-threads</tt>:: <tt>ffmpeg.threads</tt>
  # <tt>-padleft</tt>:: <tt>ffmpeg.pad_left</tt>
  # <tt>-hex</tt>:: <tt>ffmpeg.hex</tt>
  # <tt>-newsubtitle</tt>:: <tt>ffmpeg.new_subtitles_stream</tt>
  # <tt>-analyzeduration</tt>:: <tt>ffmpeg.decoding_analyze_duration</tt>
  # <tt>-qns</tt>:: <tt>ffmpeg.quantizer_noise_shaping</tt>
  # <tt>-ps</tt>:: <tt>ffmpeg.video_rtp_payload_size</tt>
  # <tt>-vhook</tt>:: <tt>ffmpeg.video_processing_module</tt>
  # <tt>-i</tt>:: <tt>ffmpeg.input</tt>
  # <tt>-f</tt>:: <tt>ffmpeg.output_format</tt>
  # <tt>-bframebias</tt>:: <tt>ffmpeg.influences_b_frame_usage</tt>
  # <tt>-dia_size</tt>:: <tt>ffmpeg.diamond_type_and_size</tt>
  # <tt>-tvstd</tt>:: <tt>ffmpeg.television_standard</tt>
  # <tt>-hurry_up</tt>:: <tt>ffmpeg.hurry_up</tt>
  # <tt>-vn</tt>:: <tt>ffmpeg.disable_video</tt>
  # <tt>-skip_top</tt>:: <tt>ffmpeg.skip_top_macroblock_rows</tt>
  # <tt>-fs</tt>:: <tt>ffmpeg.limit_file_size</tt>
  # <tt>-minrate</tt>:: <tt>ffmpeg.max_video_bitrate</tt>
  # <tt>-qphist</tt>:: <tt>ffmpeg.qp_histogram</tt>
  # <tt>-complexityblur</tt>:: <tt>ffmpeg.reduce_gp_fluctuations</tt>
  # <tt>-border_mask</tt>:: <tt>ffmpeg.border_mask</tt>
  # <tt>-precmp</tt>:: <tt>ffmpeg.pre_motion_estimation_compare</tt>
  # <tt>-map_meta_data</tt>:: <tt>ffmpeg.metadata_mapping</tt>
  # <tt>-passlogfile</tt>:: <tt>ffmpeg.pass_log_file</tt>
  # <tt>-pass</tt>:: <tt>ffmpeg.pass</tt>
  # <tt>-level</tt>:: <tt>ffmpeg.encoding_level</tt>
  # <tt>-rc_init_cplx</tt>:: <tt>ffmpeg.initial_pass_complexity</tt>
  # <tt>-aq</tt>:: <tt>ffmpeg.audio_quality</tt>
  # <tt>-timestamp</tt>:: <tt>ffmpeg.timestamp</tt>
  # <tt>-dframes</tt>:: <tt>ffmpeg.data_frames</tt>
  # <tt>-min_prediction_order</tt>:: <tt>ffmpeg.min_prediction_order</tt>
  # <tt>-partitions</tt>:: <tt>ffmpeg.macroblock_subpartition_size</tt>
  # <tt>-me_range</tt>:: <tt>ffmpeg.limit_motion_vectors_range</tt>
  # <tt>-intra</tt>:: <tt>ffmpeg.only_intra_frames</tt>
  # <tt>-async</tt>:: <tt>ffmpeg.audio_sync</tt>
  # <tt>-skip_factor</tt>:: <tt>ffmpeg.frame_skip_factor</tt>
  # <tt>-tcplx_mask</tt>:: <tt>ffmpeg.temporal_complexity_masking</tt>
  # <tt>-an</tt>:: <tt>ffmpeg.disable_audio</tt>
  # <tt>-qscale</tt>:: <tt>ffmpeg.qscale</tt>
  # <tt>-s</tt>:: <tt>ffmpeg.video_frame_size</tt>
  # <tt>-fflags</tt>:: <tt>ffmpeg.fflags</tt>
  # <tt>-use_lpc</tt>:: <tt>ffmpeg.lpc_mode</tt>
  # <tt>-coder</tt>:: <tt>ffmpeg.video_coder</tt>
  # <tt>-muxdelay</tt>:: <tt>ffmpeg.maximum_demux_delay</tt>
  # <tt>-rc_override</tt>:: <tt>ffmpeg.rate_control_override</tt>
  # <tt>-mblmin</tt>:: <tt>ffmpeg.min_macroblock_lag_range_factor</tt>
  # <tt>-idct</tt>:: <tt>ffmpeg.idct_implementation</tt>
  # <tt>-inter_matrix</tt>:: <tt>ffmpeg.inter_matrix</tt>
  # <tt>-cropbottom</tt>:: <tt>ffmpeg.crop_bottom</tt>
  # <tt>-h</tt>:: <tt>ffmpeg.help</tt>
  # <tt>-newaudio</tt>:: <tt>ffmpeg.new_audio_stream</tt>
  # <tt>-max_partition_order</tt>:: <tt>ffmpeg.max_audio_partition_order</tt>
  # <tt>-sc_threshold</tt>:: <tt>ffmpeg.encoding_scene_change_threshold</tt>
  # <tt>-ab</tt>:: <tt>ffmpeg.audio_bitrate</tt>
  # <tt>-strict</tt>:: <tt>ffmpeg.strictness</tt>
  # <tt>-crf</tt>:: <tt>ffmpeg.constant_quality_mode</tt>
  # <tt>-aspect</tt>:: <tt>ffmpeg.encoding_sample_aspect_ratio</tt>
  # <tt>-absf</tt>:: <tt>ffmpeg.audio_bitstream_filter</tt>
  # <tt>-loop_input</tt>:: <tt>ffmpeg.loop_input</tt>
  # <tt>-padtop</tt>:: <tt>ffmpeg.pad_top</tt>
  # <tt>-muxrate</tt>:: <tt>ffmpeg.encoding_mux_rate</tt>
  # <tt>-nr</tt>:: <tt>ffmpeg.noise_reduction</tt>
  # <tt>-L</tt>:: <tt>ffmpeg.license</tt>
  # <tt>-v</tt>:: <tt>ffmpeg.verbose</tt>
  # <tt>-frame_size</tt>:: <tt>ffmpeg.audio_frame_size</tt>
  # <tt>-vstats</tt>:: <tt>ffmpeg.dump_video_coding_statistics</tt>
  #
  class FFmpegTask < RProgram::Task

    # Main options
    short_option :flag => '-L', :name => :license
    short_option :flag => '-h', :name => :help
    long_option :flag => '-version'
    short_option :flag => '-f', :name => :output_format
    short_option :flag => '-i', :name => :input
    short_option :flag => '-y', :name => :overwrite_output_files
    short_option :flag => '-t', :name => :record_for
    short_option :flag => '-fs', :name => :limit_file_size
    short_option :flag => '-ss', :name => :record_start_time
    long_option :flag => '-itsoffset', :name => :input_ts_offset
    long_option :flag => '-title'
    long_option :flag => '-timestamp'
    long_option :flag => '-author'
    long_option :flag => '-copyright'
    long_option :flag => '-comment'
    long_option :flag => '-album'
    short_option :flag => '-v', :name => :verbose
    long_option :flag => '-target'
    long_option :flag => '-dframes', :name => :data_frames

    # Video options
    long_option :flag => '-vframes', :name => :video_frames
    short_option :flag => '-r', :name => :fps
    short_option :flag => '-s', :name => :video_frame_size
    long_option :flag => '-aspect', :name => :aspect_ratio
    long_option :flag => '-croptop', :name => :crop_top
    long_option :flag => '-cropbottom', :name => :crop_bottom
    long_option :flag => '-cropleft', :name => :crop_left
    long_option :flag => '-cropright', :name => :crop_right
    long_option :flag => '-padtop', :name => :pad_top
    long_option :flag => '-padbottom', :name => :pad_bottom
    long_option :flag => '-padleft', :name => :pad_left
    long_option :flag => '-padright', :name => :pad_right
    long_option :flag => '-padcolor', :name => :pad_color
    long_option :flag => '-vn', :name => :disable_video
    long_option :flag => '-vcodec', :name => :video_codec
    long_option :flag => '-sameq', :name => :preserve_video_quality
    long_option :flag => '-pass', :name => :pass
    long_option :flag => '-passlogfile', :name => :pass_log_file
    long_option :flag => '-newvideo', :name => :new_video_stream

    # Advanced Video options
    long_option :flag => '-pix_fmt', :name => :pixel_format
    long_option :flag => '-intra', :name => :only_intra_frames
    long_option :flag => '-vdt', :name => :discard_threshold
    long_option :flag => '-qscale'
    long_option :flag => '-qdiff'
    long_option :flag => '-rc_eq', :name => :rate_control_equation
    long_option :flag => '-rc_override', :name => :rate_control_override
    long_option :flag => '-me', :name => :motion_estimation_method
    long_option :flag => '-me_threshold', :name => :motion_estimation_threshold
    long_option :flag => '-strict', :name => :strictness
    long_option :flag => '-deinterlace', :name => :deinterlace
    long_option :flag => '-psnr', :name => :calculate_psnr
    long_option :flag => '-vstats', :name => :dump_video_coding_statistics
    long_option :flag => '-vstats_file', :name => :log_video_coding_statistics
    long_option :flag => '-vhook', :name => :video_processing_module
    long_option :flag => '-intra_matrix'
    long_option :flag => '-inter_matrix'
    long_option :flag => '-top'
    long_option :flag => '-dc', :name => :intra_dc_precision
    long_option :flag => '-vtag', :name => :force_video_tag
    long_option :flag => '-qphist', :name => :qp_histogram
    long_option :flag => '-vbsf', :name => :bitstream_filter

    # Audio options
    long_option :flag => '-aframes', :name => :audio_frames
    long_option :flag => '-aq', :name => :audio_quality
    long_option :flag => '-ar', :name => :audio_sampling_rate
    long_option :flag => '-ac', :name => :audio_channels
    long_option :flag => '-an', :name => :disable_audio
    long_option :flag => '-acodec', :name => :audio_codec
    long_option :flag => '-vol', :name => :audio_volume
    long_option :flag => '-newaudio', :name => :new_audio_stream
    long_option :flag => '-alang', :name => :audio_language_code

    # Advanced Audio options
    long_option :flag => '-atag', :name => :force_audio_tag
    long_option :flag => '-absf', :name => :audio_bitstream_filter

    # Subtitle options
    long_option :flag => '-scodec', :name => :subtitle_codec
    long_option :flag => '-newsubtitle', :name => :new_subtitles_stream
    long_option :flag => '-slang', :name => :subtitle_language_code

    # Audio/Video options
    long_option :flag => '-vc', :name => :video_graph_channel
    long_option :flag => '-tvstd', :name => :television_standard
    long_option :flag => '-isync', :name => :sync_read_on_input

    # Advanced options
    long_option :flag => '-map', :name => :input_stream_mapping
    long_option :flag => '-map_meta_data', :name => :metadata_mapping
    long_option :flag => '-benchmark'
    long_option :flag => '-dump'
    long_option :flag => '-hex'
    long_option :flag => '-re', :name => :read_at_native_fps
    long_option :flag => '-loop_input'
    long_option :flag => '-loop_output'
    long_option :flag => '-threads'
    long_option :flag => '-vsync', :name => :video_sync
    long_option :flag => '-async', :name => :audio_sync
    long_option :flag => '-vglobal', :name => :video_global_header
    long_option :flag => '-copyts', :name => :copy_timestams
    long_option :flag => '-shortest'
    long_option :flag => '-dts_delta_threshold'
    long_option :flag => '-muxdelay', :name => :maximum_demux_delay
    long_option :flag => '-muxpreload', :name => :initial_demux_delay

    # AVCodecContext AVOptions
    short_option :flag => '-b', :name => :video_bitrate
    short_option :flag => '-ab', :name => :audio_bitrate
    long_option :flag => '-flags'
    short_option :flag => '-g', :name => :group_picture_size
    long_option :flag => '-cutoff', :name => :audio_bandwidth_cutoff
    long_option :flag => '-frame_size', :name => :audio_frame_size
    long_option :flag => '-rc_strategy', :name => :video_ratecontrol_method
    long_option :flag => '-hurry_up'
    long_option :flag => '-ps', :name => :video_rtp_payload_size
    long_option :flag => '-bug'
    long_option :flag => '-mpeg_quant', :name => :mpeg_quantizers
    long_option :flag => '-rc_eq', :name => :video_rate_control
    long_option :flag => '-maxrate', :name => :max_video_bitrate
    long_option :flag => '-minrate', :name => :max_video_bitrate
    long_option :flag => '-bufsize', :name => :video_ratecontrol_buffer_size
    long_option :flag => '-rc_buf_aggressivity', :name => :currently_useless
    long_option :flag => '-rc_init_cplx', :name => :initial_pass_complexity
    long_option :flag => '-dct', :name => :dct_algorithm
    long_option :flag => '-lumi_mask', :name => :luminescence_mask
    long_option :flag => '-tcplx_mask', :name => :temporal_complexity_masking
    long_option :flag => '-scplx_mask', :name => :spatial_complexity_masking
    long_option :flag => '-dark_mask', :name => :darkness_mask
    long_option :flag => '-idct', :name => :idct_implementation
    long_option :flag => '-ec', :name => :error_concealment
    long_option :flag => '-pred', :name => :encoding_prediction_method
    long_option :flag => '-aspect', :name => :encoding_sample_aspect_ratio
    long_option :flag => '-debug'
    long_option :flag => '-vismv', :name => :visualize_motion_vectors
    long_option :flag => '-cmp', :name => :full_pel_motion_estimation_compare
    long_option :flag => '-subcmp', :name => :sub_full_pel_motion_estimation_compare
    long_option :flag => '-mbcomp', :name => :marcoblock_compare_function
    long_option :flag => '-dia_size', :name => :diamond_type_and_size
    long_option :flag => '-last_pred', :name => :motion_preditors_from_previous
    long_option :flag => '-preme', :name => :pre_motion_estimation
    long_option :flag => '-precmp', :name => :pre_motion_estimation_compare
    long_option :flag => '-pre_dia_size', :name => :pre_pass_diamond_type_and_size
    long_option :flag => '-subq', :name => :sub_pel_motion_estimation_quality
    long_option :flag => '-me_range', :name => :limit_motion_vectors_range
    long_option :flag => '-ibias', :name => :intra_quant_bias
    long_option :flag => '-pbias', :name => :inter_quant_bias
    long_option :flag => '-coder', :name => :video_coder
    long_option :flag => '-context', :name => :video_encoding_context_model
    long_option :flag => '-mbd', :name => :macroblock_decision_algorithm
    long_option :flag => '-sc_threshold', :name => :encoding_scene_change_threshold
    long_option :flag => '-lmin', :name => :min_lag_range_factor
    long_option :flag => '-lmax', :name => :max_lag_range_factor
    long_option :flag => '-nr', :name => :noise_reduction
    long_option :flag => '-inter_threshold'
    long_option :flag => '-flags2', :name => :extra_flags
    long_option :flag => '-qns', :name => :quantizer_noise_shaping
    long_option :flag => '-threads'
    long_option :flag => '-mb_threshold', :name => :macroblock_threshold
    long_option :flag => '-dc', :name => :intra_dc_precision
    long_option :flag => '-nssew', :name => :nsse_weight
    long_option :flag => '-skip_top', :name => :skip_top_macroblock_rows
    long_option :flag => '-skip_bottom', :name => :skip_bottom_macroblock_rows
    long_option :flag => '-profile', :name => :encoding_profile
    long_option :flag => '-level', :name => :encoding_level
    long_option :flag => '-lowres', :name => :lowres_decode
    long_option :flag => '-skip_threshold', :name => :frame_skip_threshold
    long_option :flag => '-skip_factor', :name => :frame_skip_factor
    long_option :flag => '-skip_ext', :name => :frame_skip_exponent
    long_option :flag => '-skipcmp', :name => :frame_skip_compare
    long_option :flag => '-border_mask'
    long_option :flag => '-mblmin', :name => :min_macroblock_lag_range_factor
    long_option :flag => '-mblmax', :name => :max_macroblock_lag_range_factor
    long_option :flag => '-mepc', :name => :motion_estimation_bitrate_penalty
    long_option :flag => '-crf', :name => :constant_quality_mode
    long_option :flag => '-cpp', :name => :constant_quantization_parameter_rate_control
    long_option :flag => '-keyint_min', :name => :min_interval_between_idr_frames
    long_option :flag => '-refs', :name => :ref_frames_for_motion_compensation
    long_option :flag => '-chromaoffset', :name => :chroma_gp_offset_from_luma
    long_option :flag => '-bframebias', :name => :influences_b_frame_usage
    long_option :flag => '-trellis', :name => :rate_distortion_optimal_quantization
    long_option :flag => '-directpred 1', :name => :direct_mv_prediction
    long_option :flag => '-complexityblur', :name => :reduce_gp_fluctuations
    long_option :flag => '-deblockalpha', :name => :alphac0_deblocking
    long_option :flag => '-deblockbeta', :name => :beta_deblocking
    long_option :flag => '-partitions', :name => :macroblock_subpartition_size
    long_option :flag => '-sc_factor', :name => :scene_change_modifier
    long_option :flag => '--mv0_threshold'
    long_option :flag => '-b_sensitivity', :name => :b_frame_sensitivity
    long_option :flag => '-compression_level'
    long_option :flag => '-use_lpc', :name => :lpc_mode
    long_option :flag => '-lpc_coeff_precision', :name => :lpc_coefficient_precision
    long_option :flag => '-min_prediction_order'
    long_option :flag => '-max_prediction_order'
    long_option :flag => '-prediction_order_method'
    long_option :flag => '-min_partition_order', :name => :min_audio_partition_order
    long_option :flag => '-max_partition_order', :name => :max_audio_partition_order
    long_option :flag => '-timecode_frame_start', :name => :gop_timecode_frame_start

    # AVFormatContext options
    long_option :flag => '-probesize', :name => :decoding_probe_size
    long_option :flag => '-muxrate', :name => :encoding_mux_rate
    long_option :flag => '-packetsize', :name => :encoding_packet_size
    long_option :flag => '-fflags'
    long_option :flag => '-encoding_track'
    long_option :flag => '-encoding_year'
    long_option :flag => '-analyzeduration', :name => :decoding_analyze_duration

    non_option :name => :output

  end
end
