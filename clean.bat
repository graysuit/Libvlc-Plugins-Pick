@echo off                                             
Echo "    ________________________________    "       
Echo "   |                                |   "       
Echo "   |  Usage:                        |   "       
Echo "   |  clean.bat "libvlc_dir_path"   |   "       
Echo "   |  clean.bat "C:\User\libvlc"    |   "       
Echo "   |________________________________|   "       
color 07

REM list of usefull files
set "list=win-x64\libvlc.dll win-x64\libvlccore.dll win-x64\hrtfs\dodeca_and_7channel_3DSL_HRTF.sofa win-x86\libvlc.dll win-x86\libvlccore.dll win-x86\hrtfs\dodeca_and_7channel_3DSL_HRTF.sofa win-x86\plugins\access\libaccess_concat_plugin.dll win-x86\plugins\access\libaccess_imem_plugin.dll win-x86\plugins\access\libaccess_mms_plugin.dll win-x86\plugins\access\libaccess_realrtsp_plugin.dll win-x86\plugins\access\libaccess_srt_plugin.dll win-x86\plugins\access\libaccess_wasapi_plugin.dll win-x86\plugins\access\libattachment_plugin.dll win-x86\plugins\access\libbluray-awt-j2se-1.2.0.jar win-x86\plugins\access\libbluray-j2se-1.2.0.jar win-x86\plugins\access\libcdda_plugin.dll win-x86\plugins\access\libdcp_plugin.dll win-x86\plugins\access\libdshow_plugin.dll win-x86\plugins\access\libdtv_plugin.dll win-x86\plugins\access\libdvdnav_plugin.dll win-x86\plugins\access\libdvdread_plugin.dll win-x86\plugins\access\libfilesystem_plugin.dll win-x86\plugins\access\libftp_plugin.dll win-x86\plugins\access\libhttp_plugin.dll win-x86\plugins\access\libhttps_plugin.dll win-x86\plugins\access\libidummy_plugin.dll win-x86\plugins\access\libimem_plugin.dll win-x86\plugins\access\liblibbluray_plugin.dll win-x86\plugins\access\liblive555_plugin.dll win-x86\plugins\access\libnfs_plugin.dll win-x86\plugins\access\librtp_plugin.dll win-x86\plugins\access\libsatip_plugin.dll win-x86\plugins\access\libscreen_plugin.dll win-x86\plugins\access\libsdp_plugin.dll win-x86\plugins\access\libsftp_plugin.dll win-x86\plugins\access\libshm_plugin.dll win-x86\plugins\access\libsmb_plugin.dll win-x86\plugins\access\libtcp_plugin.dll win-x86\plugins\access\libtimecode_plugin.dll win-x86\plugins\access\libudp_plugin.dll win-x86\plugins\access\libvcd_plugin.dll win-x86\plugins\access\libvdr_plugin.dll win-x86\plugins\access\libvnc_plugin.dll win-x86\plugins\audio_output\libadummy_plugin.dll win-x86\plugins\audio_output\libafile_plugin.dll win-x86\plugins\audio_output\libamem_plugin.dll win-x86\plugins\audio_output\libdirectsound_plugin.dll win-x86\plugins\audio_output\libmmdevice_plugin.dll win-x86\plugins\audio_output\libwasapi_plugin.dll win-x86\plugins\audio_output\libwaveout_plugin.dll win-x86\plugins\codec\liba52_plugin.dll win-x86\plugins\codec\libadpcm_plugin.dll win-x86\plugins\codec\libaes3_plugin.dll win-x86\plugins\codec\libaom_plugin.dll win-x86\plugins\codec\libaraw_plugin.dll win-x86\plugins\codec\libaribsub_plugin.dll win-x86\plugins\codec\libavcodec_plugin.dll win-x86\plugins\codec\libcc_plugin.dll win-x86\plugins\codec\libcdg_plugin.dll win-x86\plugins\codec\libcrystalhd_plugin.dll win-x86\plugins\codec\libcvdsub_plugin.dll win-x86\plugins\codec\libd3d11va_plugin.dll win-x86\plugins\codec\libdav1d_plugin.dll win-x86\plugins\codec\libdca_plugin.dll win-x86\plugins\codec\libddummy_plugin.dll win-x86\plugins\codec\libdmo_plugin.dll win-x86\plugins\codec\libdvbsub_plugin.dll win-x86\plugins\codec\libdxva2_plugin.dll win-x86\plugins\codec\libedummy_plugin.dll win-x86\plugins\codec\libfaad_plugin.dll win-x86\plugins\codec\libflac_plugin.dll win-x86\plugins\codec\libfluidsynth_plugin.dll win-x86\plugins\codec\libg711_plugin.dll win-x86\plugins\codec\libjpeg_plugin.dll win-x86\plugins\codec\libkate_plugin.dll win-x86\plugins\codec\liblibass_plugin.dll win-x86\plugins\codec\liblibmpeg2_plugin.dll win-x86\plugins\codec\liblpcm_plugin.dll win-x86\plugins\codec\libmft_plugin.dll win-x86\plugins\codec\libmpg123_plugin.dll win-x86\plugins\codec\liboggspots_plugin.dll win-x86\plugins\codec\libopus_plugin.dll win-x86\plugins\codec\libpng_plugin.dll win-x86\plugins\codec\libqsv_plugin.dll win-x86\plugins\codec\librawvideo_plugin.dll win-x86\plugins\codec\librtpvideo_plugin.dll win-x86\plugins\codec\libschroedinger_plugin.dll win-x86\plugins\codec\libscte18_plugin.dll win-x86\plugins\codec\libscte27_plugin.dll win-x86\plugins\codec\libsdl_image_plugin.dll win-x86\plugins\codec\libspdif_plugin.dll win-x86\plugins\codec\libspeex_plugin.dll win-x86\plugins\codec\libspudec_plugin.dll win-x86\plugins\codec\libstl_plugin.dll win-x86\plugins\codec\libsubsdec_plugin.dll win-x86\plugins\codec\libsubstx3g_plugin.dll win-x86\plugins\codec\libsubsusf_plugin.dll win-x86\plugins\codec\libsvcdsub_plugin.dll win-x86\plugins\codec\libt140_plugin.dll win-x86\plugins\codec\libtextst_plugin.dll win-x86\plugins\codec\libtheora_plugin.dll win-x86\plugins\codec\libttml_plugin.dll win-x86\plugins\codec\libtwolame_plugin.dll win-x86\plugins\codec\libuleaddvaudio_plugin.dll win-x86\plugins\codec\libvorbis_plugin.dll win-x86\plugins\codec\libvpx_plugin.dll win-x86\plugins\codec\libwebvtt_plugin.dll win-x86\plugins\codec\libx264_plugin.dll win-x86\plugins\codec\libx26410b_plugin.dll win-x86\plugins\codec\libx265_plugin.dll win-x86\plugins\codec\libzvbi_plugin.dll win-x86\plugins\demux\libadaptive_plugin.dll win-x86\plugins\demux\libaiff_plugin.dll win-x86\plugins\demux\libasf_plugin.dll win-x86\plugins\demux\libau_plugin.dll win-x86\plugins\demux\libavi_plugin.dll win-x86\plugins\demux\libcaf_plugin.dll win-x86\plugins\demux\libdemux_cdg_plugin.dll win-x86\plugins\demux\libdemux_chromecast_plugin.dll win-x86\plugins\demux\libdemux_stl_plugin.dll win-x86\plugins\demux\libdemuxdump_plugin.dll win-x86\plugins\demux\libdiracsys_plugin.dll win-x86\plugins\demux\libdirectory_demux_plugin.dll win-x86\plugins\demux\libes_plugin.dll win-x86\plugins\demux\libflacsys_plugin.dll win-x86\plugins\demux\libgme_plugin.dll win-x86\plugins\demux\libh26x_plugin.dll win-x86\plugins\demux\libimage_plugin.dll win-x86\plugins\demux\libmjpeg_plugin.dll win-x86\plugins\demux\libmkv_plugin.dll win-x86\plugins\demux\libmod_plugin.dll win-x86\plugins\demux\libmp4_plugin.dll win-x86\plugins\demux\libmpc_plugin.dll win-x86\plugins\demux\libmpgv_plugin.dll win-x86\plugins\demux\libnoseek_plugin.dll win-x86\plugins\demux\libnsc_plugin.dll win-x86\plugins\demux\libnsv_plugin.dll win-x86\plugins\demux\libnuv_plugin.dll win-x86\plugins\demux\libogg_plugin.dll win-x86\plugins\demux\libplaylist_plugin.dll win-x86\plugins\demux\libps_plugin.dll win-x86\plugins\demux\libpva_plugin.dll win-x86\plugins\demux\librawaud_plugin.dll win-x86\plugins\demux\librawdv_plugin.dll win-x86\plugins\demux\librawvid_plugin.dll win-x86\plugins\demux\libreal_plugin.dll win-x86\plugins\demux\libsid_plugin.dll win-x86\plugins\demux\libsmf_plugin.dll win-x86\plugins\demux\libsubtitle_plugin.dll win-x86\plugins\demux\libts_plugin.dll win-x86\plugins\demux\libtta_plugin.dll win-x86\plugins\demux\libty_plugin.dll win-x86\plugins\demux\libvc1_plugin.dll win-x86\plugins\demux\libvobsub_plugin.dll win-x86\plugins\demux\libvoc_plugin.dll win-x86\plugins\demux\libwav_plugin.dll win-x86\plugins\demux\libxa_plugin.dll win-x86\plugins\spu\libaudiobargraph_v_plugin.dll win-x86\plugins\spu\liblogo_plugin.dll win-x86\plugins\spu\libmarq_plugin.dll win-x86\plugins\spu\libmosaic_plugin.dll win-x86\plugins\spu\libremoteosd_plugin.dll win-x86\plugins\spu\librss_plugin.dll win-x86\plugins\spu\libsubsdelay_plugin.dll win-x86\plugins\text_renderer\libfreetype_plugin.dll win-x86\plugins\text_renderer\libsapi_plugin.dll win-x86\plugins\text_renderer\libtdummy_plugin.dll win-x86\plugins\video_output\libcaca_plugin.dll win-x86\plugins\video_output\libdirect3d11_plugin.dll win-x86\plugins\video_output\libdirect3d9_plugin.dll win-x86\plugins\video_output\libdirectdraw_plugin.dll win-x86\plugins\video_output\libdrawable_plugin.dll win-x86\plugins\video_output\libflaschen_plugin.dll win-x86\plugins\video_output\libgl_plugin.dll win-x86\plugins\video_output\libglwin32_plugin.dll win-x86\plugins\video_output\libvdummy_plugin.dll win-x86\plugins\video_output\libvmem_plugin.dll win-x86\plugins\video_output\libwgl_plugin.dll win-x86\plugins\video_output\libwingdi_plugin.dll win-x86\plugins\video_output\libwinhibit_plugin.dll win-x86\plugins\video_output\libyuv_plugin.dll"

REM 1st argument contains dir path
set "dir=%1"
echo %1
REM Check whether dir exists
REM For each in list  
REM Copy specifc files to libvlc_clean dir	
if exist %dir% for %%i in (%list%) do (XCOPY /Y /E "%dir%\%%i" "%dir%_clean\%%i*")
color 0a
