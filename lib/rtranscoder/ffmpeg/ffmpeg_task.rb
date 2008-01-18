require 'rprogram/task'

module RTranscoder
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
    short_option :flag => '-s', :name => :video_frame_dimension
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
