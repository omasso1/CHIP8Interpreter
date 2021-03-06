# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=release
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
INCLUDES += -I../../../include
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS += -lsetupapi -lwinmm -limm32 -lversion
LDDEPS +=
LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),release)
TARGETDIR = ../../../Binaries/Release-windows-x86_64
TARGET = $(TARGETDIR)/SDL2.dll
OBJDIR = ../../Release-windows-x86_64/SDL2
DEFINES += -D_WINDOWS -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O3 -msse
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O3 -msse -std=c++17 -fno-stack-protector
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -shared -Wl,--out-implib="../../../Binaries/Release-windows-x86_64/SDL2.lib" -s

else ifeq ($(config),debug)
TARGETDIR = ../../../Binaries/Debug-windows-x86_64
TARGET = $(TARGETDIR)/SDL2.dll
OBJDIR = ../../Debug-windows-x86_64/SDL2
DEFINES += -D_WINDOWS -D_DEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g -msse
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g -msse -std=c++17 -fno-stack-protector
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -shared -Wl,--out-implib="../../../Binaries/Debug-windows-x86_64/SDL2.lib"

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/SDL.o
GENERATED += $(OBJDIR)/SDL_RLEaccel.o
GENERATED += $(OBJDIR)/SDL_assert.o
GENERATED += $(OBJDIR)/SDL_atomic.o
GENERATED += $(OBJDIR)/SDL_audio.o
GENERATED += $(OBJDIR)/SDL_audiocvt.o
GENERATED += $(OBJDIR)/SDL_audiodev.o
GENERATED += $(OBJDIR)/SDL_audiotypecvt.o
GENERATED += $(OBJDIR)/SDL_blendfillrect.o
GENERATED += $(OBJDIR)/SDL_blendline.o
GENERATED += $(OBJDIR)/SDL_blendpoint.o
GENERATED += $(OBJDIR)/SDL_blit.o
GENERATED += $(OBJDIR)/SDL_blit_0.o
GENERATED += $(OBJDIR)/SDL_blit_1.o
GENERATED += $(OBJDIR)/SDL_blit_A.o
GENERATED += $(OBJDIR)/SDL_blit_N.o
GENERATED += $(OBJDIR)/SDL_blit_auto.o
GENERATED += $(OBJDIR)/SDL_blit_copy.o
GENERATED += $(OBJDIR)/SDL_blit_slow.o
GENERATED += $(OBJDIR)/SDL_bmp.o
GENERATED += $(OBJDIR)/SDL_clipboard.o
GENERATED += $(OBJDIR)/SDL_clipboardevents.o
GENERATED += $(OBJDIR)/SDL_cpuinfo.o
GENERATED += $(OBJDIR)/SDL_d3dmath.o
GENERATED += $(OBJDIR)/SDL_dataqueue.o
GENERATED += $(OBJDIR)/SDL_dinputhaptic.o
GENERATED += $(OBJDIR)/SDL_dinputjoystick.o
GENERATED += $(OBJDIR)/SDL_directsound.o
GENERATED += $(OBJDIR)/SDL_diskaudio.o
GENERATED += $(OBJDIR)/SDL_displayevents.o
GENERATED += $(OBJDIR)/SDL_drawline.o
GENERATED += $(OBJDIR)/SDL_drawpoint.o
GENERATED += $(OBJDIR)/SDL_dropevents.o
GENERATED += $(OBJDIR)/SDL_dummyaudio.o
GENERATED += $(OBJDIR)/SDL_dummysensor.o
GENERATED += $(OBJDIR)/SDL_dynapi.o
GENERATED += $(OBJDIR)/SDL_egl.o
GENERATED += $(OBJDIR)/SDL_error.o
GENERATED += $(OBJDIR)/SDL_events.o
GENERATED += $(OBJDIR)/SDL_fillrect.o
GENERATED += $(OBJDIR)/SDL_gamecontroller.o
GENERATED += $(OBJDIR)/SDL_gesture.o
GENERATED += $(OBJDIR)/SDL_getenv.o
GENERATED += $(OBJDIR)/SDL_haptic.o
GENERATED += $(OBJDIR)/SDL_hidapi_ps4.o
GENERATED += $(OBJDIR)/SDL_hidapi_switch.o
GENERATED += $(OBJDIR)/SDL_hidapi_xbox360.o
GENERATED += $(OBJDIR)/SDL_hidapi_xboxone.o
GENERATED += $(OBJDIR)/SDL_hidapijoystick.o
GENERATED += $(OBJDIR)/SDL_hints.o
GENERATED += $(OBJDIR)/SDL_iconv.o
GENERATED += $(OBJDIR)/SDL_joystick.o
GENERATED += $(OBJDIR)/SDL_keyboard.o
GENERATED += $(OBJDIR)/SDL_log.o
GENERATED += $(OBJDIR)/SDL_malloc.o
GENERATED += $(OBJDIR)/SDL_mixer.o
GENERATED += $(OBJDIR)/SDL_mmjoystick.o
GENERATED += $(OBJDIR)/SDL_mouse.o
GENERATED += $(OBJDIR)/SDL_nullevents.o
GENERATED += $(OBJDIR)/SDL_nullframebuffer.o
GENERATED += $(OBJDIR)/SDL_nullvideo.o
GENERATED += $(OBJDIR)/SDL_pixels.o
GENERATED += $(OBJDIR)/SDL_power.o
GENERATED += $(OBJDIR)/SDL_qsort.o
GENERATED += $(OBJDIR)/SDL_quit.o
GENERATED += $(OBJDIR)/SDL_rect.o
GENERATED += $(OBJDIR)/SDL_render.o
GENERATED += $(OBJDIR)/SDL_render_d3d.o
GENERATED += $(OBJDIR)/SDL_render_d3d11.o
GENERATED += $(OBJDIR)/SDL_render_gl.o
GENERATED += $(OBJDIR)/SDL_render_gles2.o
GENERATED += $(OBJDIR)/SDL_render_sw.o
GENERATED += $(OBJDIR)/SDL_rotate.o
GENERATED += $(OBJDIR)/SDL_rwops.o
GENERATED += $(OBJDIR)/SDL_sensor.o
GENERATED += $(OBJDIR)/SDL_shaders_d3d.o
GENERATED += $(OBJDIR)/SDL_shaders_d3d11.o
GENERATED += $(OBJDIR)/SDL_shaders_gl.o
GENERATED += $(OBJDIR)/SDL_shaders_gles2.o
GENERATED += $(OBJDIR)/SDL_shape.o
GENERATED += $(OBJDIR)/SDL_spinlock.o
GENERATED += $(OBJDIR)/SDL_stdlib.o
GENERATED += $(OBJDIR)/SDL_stretch.o
GENERATED += $(OBJDIR)/SDL_string.o
GENERATED += $(OBJDIR)/SDL_surface.o
GENERATED += $(OBJDIR)/SDL_syscond.o
GENERATED += $(OBJDIR)/SDL_sysfilesystem.o
GENERATED += $(OBJDIR)/SDL_sysloadso.o
GENERATED += $(OBJDIR)/SDL_sysmutex.o
GENERATED += $(OBJDIR)/SDL_syspower.o
GENERATED += $(OBJDIR)/SDL_syssem.o
GENERATED += $(OBJDIR)/SDL_systhread.o
GENERATED += $(OBJDIR)/SDL_systimer.o
GENERATED += $(OBJDIR)/SDL_systls.o
GENERATED += $(OBJDIR)/SDL_thread.o
GENERATED += $(OBJDIR)/SDL_timer.o
GENERATED += $(OBJDIR)/SDL_touch.o
GENERATED += $(OBJDIR)/SDL_video.o
GENERATED += $(OBJDIR)/SDL_vulkan_utils.o
GENERATED += $(OBJDIR)/SDL_wasapi.o
GENERATED += $(OBJDIR)/SDL_wasapi_win32.o
GENERATED += $(OBJDIR)/SDL_wave.o
GENERATED += $(OBJDIR)/SDL_windowevents.o
GENERATED += $(OBJDIR)/SDL_windows.o
GENERATED += $(OBJDIR)/SDL_windowsclipboard.o
GENERATED += $(OBJDIR)/SDL_windowsevents.o
GENERATED += $(OBJDIR)/SDL_windowsframebuffer.o
GENERATED += $(OBJDIR)/SDL_windowshaptic.o
GENERATED += $(OBJDIR)/SDL_windowsjoystick.o
GENERATED += $(OBJDIR)/SDL_windowskeyboard.o
GENERATED += $(OBJDIR)/SDL_windowsmessagebox.o
GENERATED += $(OBJDIR)/SDL_windowsmodes.o
GENERATED += $(OBJDIR)/SDL_windowsmouse.o
GENERATED += $(OBJDIR)/SDL_windowsopengl.o
GENERATED += $(OBJDIR)/SDL_windowsopengles.o
GENERATED += $(OBJDIR)/SDL_windowsshape.o
GENERATED += $(OBJDIR)/SDL_windowsvideo.o
GENERATED += $(OBJDIR)/SDL_windowsvulkan.o
GENERATED += $(OBJDIR)/SDL_windowswindow.o
GENERATED += $(OBJDIR)/SDL_winmm.o
GENERATED += $(OBJDIR)/SDL_xinput.o
GENERATED += $(OBJDIR)/SDL_xinputhaptic.o
GENERATED += $(OBJDIR)/SDL_xinputjoystick.o
GENERATED += $(OBJDIR)/SDL_yuv.o
GENERATED += $(OBJDIR)/SDL_yuv_sw.o
GENERATED += $(OBJDIR)/e_atan2.o
GENERATED += $(OBJDIR)/e_exp.o
GENERATED += $(OBJDIR)/e_fmod.o
GENERATED += $(OBJDIR)/e_log.o
GENERATED += $(OBJDIR)/e_log10.o
GENERATED += $(OBJDIR)/e_pow.o
GENERATED += $(OBJDIR)/e_rem_pio2.o
GENERATED += $(OBJDIR)/e_sqrt.o
GENERATED += $(OBJDIR)/hid.o
GENERATED += $(OBJDIR)/k_cos.o
GENERATED += $(OBJDIR)/k_rem_pio2.o
GENERATED += $(OBJDIR)/k_sin.o
GENERATED += $(OBJDIR)/k_tan.o
GENERATED += $(OBJDIR)/s_atan.o
GENERATED += $(OBJDIR)/s_copysign.o
GENERATED += $(OBJDIR)/s_cos.o
GENERATED += $(OBJDIR)/s_fabs.o
GENERATED += $(OBJDIR)/s_floor.o
GENERATED += $(OBJDIR)/s_scalbn.o
GENERATED += $(OBJDIR)/s_sin.o
GENERATED += $(OBJDIR)/s_tan.o
GENERATED += $(OBJDIR)/yuv_rgb.o
OBJECTS += $(OBJDIR)/SDL.o
OBJECTS += $(OBJDIR)/SDL_RLEaccel.o
OBJECTS += $(OBJDIR)/SDL_assert.o
OBJECTS += $(OBJDIR)/SDL_atomic.o
OBJECTS += $(OBJDIR)/SDL_audio.o
OBJECTS += $(OBJDIR)/SDL_audiocvt.o
OBJECTS += $(OBJDIR)/SDL_audiodev.o
OBJECTS += $(OBJDIR)/SDL_audiotypecvt.o
OBJECTS += $(OBJDIR)/SDL_blendfillrect.o
OBJECTS += $(OBJDIR)/SDL_blendline.o
OBJECTS += $(OBJDIR)/SDL_blendpoint.o
OBJECTS += $(OBJDIR)/SDL_blit.o
OBJECTS += $(OBJDIR)/SDL_blit_0.o
OBJECTS += $(OBJDIR)/SDL_blit_1.o
OBJECTS += $(OBJDIR)/SDL_blit_A.o
OBJECTS += $(OBJDIR)/SDL_blit_N.o
OBJECTS += $(OBJDIR)/SDL_blit_auto.o
OBJECTS += $(OBJDIR)/SDL_blit_copy.o
OBJECTS += $(OBJDIR)/SDL_blit_slow.o
OBJECTS += $(OBJDIR)/SDL_bmp.o
OBJECTS += $(OBJDIR)/SDL_clipboard.o
OBJECTS += $(OBJDIR)/SDL_clipboardevents.o
OBJECTS += $(OBJDIR)/SDL_cpuinfo.o
OBJECTS += $(OBJDIR)/SDL_d3dmath.o
OBJECTS += $(OBJDIR)/SDL_dataqueue.o
OBJECTS += $(OBJDIR)/SDL_dinputhaptic.o
OBJECTS += $(OBJDIR)/SDL_dinputjoystick.o
OBJECTS += $(OBJDIR)/SDL_directsound.o
OBJECTS += $(OBJDIR)/SDL_diskaudio.o
OBJECTS += $(OBJDIR)/SDL_displayevents.o
OBJECTS += $(OBJDIR)/SDL_drawline.o
OBJECTS += $(OBJDIR)/SDL_drawpoint.o
OBJECTS += $(OBJDIR)/SDL_dropevents.o
OBJECTS += $(OBJDIR)/SDL_dummyaudio.o
OBJECTS += $(OBJDIR)/SDL_dummysensor.o
OBJECTS += $(OBJDIR)/SDL_dynapi.o
OBJECTS += $(OBJDIR)/SDL_egl.o
OBJECTS += $(OBJDIR)/SDL_error.o
OBJECTS += $(OBJDIR)/SDL_events.o
OBJECTS += $(OBJDIR)/SDL_fillrect.o
OBJECTS += $(OBJDIR)/SDL_gamecontroller.o
OBJECTS += $(OBJDIR)/SDL_gesture.o
OBJECTS += $(OBJDIR)/SDL_getenv.o
OBJECTS += $(OBJDIR)/SDL_haptic.o
OBJECTS += $(OBJDIR)/SDL_hidapi_ps4.o
OBJECTS += $(OBJDIR)/SDL_hidapi_switch.o
OBJECTS += $(OBJDIR)/SDL_hidapi_xbox360.o
OBJECTS += $(OBJDIR)/SDL_hidapi_xboxone.o
OBJECTS += $(OBJDIR)/SDL_hidapijoystick.o
OBJECTS += $(OBJDIR)/SDL_hints.o
OBJECTS += $(OBJDIR)/SDL_iconv.o
OBJECTS += $(OBJDIR)/SDL_joystick.o
OBJECTS += $(OBJDIR)/SDL_keyboard.o
OBJECTS += $(OBJDIR)/SDL_log.o
OBJECTS += $(OBJDIR)/SDL_malloc.o
OBJECTS += $(OBJDIR)/SDL_mixer.o
OBJECTS += $(OBJDIR)/SDL_mmjoystick.o
OBJECTS += $(OBJDIR)/SDL_mouse.o
OBJECTS += $(OBJDIR)/SDL_nullevents.o
OBJECTS += $(OBJDIR)/SDL_nullframebuffer.o
OBJECTS += $(OBJDIR)/SDL_nullvideo.o
OBJECTS += $(OBJDIR)/SDL_pixels.o
OBJECTS += $(OBJDIR)/SDL_power.o
OBJECTS += $(OBJDIR)/SDL_qsort.o
OBJECTS += $(OBJDIR)/SDL_quit.o
OBJECTS += $(OBJDIR)/SDL_rect.o
OBJECTS += $(OBJDIR)/SDL_render.o
OBJECTS += $(OBJDIR)/SDL_render_d3d.o
OBJECTS += $(OBJDIR)/SDL_render_d3d11.o
OBJECTS += $(OBJDIR)/SDL_render_gl.o
OBJECTS += $(OBJDIR)/SDL_render_gles2.o
OBJECTS += $(OBJDIR)/SDL_render_sw.o
OBJECTS += $(OBJDIR)/SDL_rotate.o
OBJECTS += $(OBJDIR)/SDL_rwops.o
OBJECTS += $(OBJDIR)/SDL_sensor.o
OBJECTS += $(OBJDIR)/SDL_shaders_d3d.o
OBJECTS += $(OBJDIR)/SDL_shaders_d3d11.o
OBJECTS += $(OBJDIR)/SDL_shaders_gl.o
OBJECTS += $(OBJDIR)/SDL_shaders_gles2.o
OBJECTS += $(OBJDIR)/SDL_shape.o
OBJECTS += $(OBJDIR)/SDL_spinlock.o
OBJECTS += $(OBJDIR)/SDL_stdlib.o
OBJECTS += $(OBJDIR)/SDL_stretch.o
OBJECTS += $(OBJDIR)/SDL_string.o
OBJECTS += $(OBJDIR)/SDL_surface.o
OBJECTS += $(OBJDIR)/SDL_syscond.o
OBJECTS += $(OBJDIR)/SDL_sysfilesystem.o
OBJECTS += $(OBJDIR)/SDL_sysloadso.o
OBJECTS += $(OBJDIR)/SDL_sysmutex.o
OBJECTS += $(OBJDIR)/SDL_syspower.o
OBJECTS += $(OBJDIR)/SDL_syssem.o
OBJECTS += $(OBJDIR)/SDL_systhread.o
OBJECTS += $(OBJDIR)/SDL_systimer.o
OBJECTS += $(OBJDIR)/SDL_systls.o
OBJECTS += $(OBJDIR)/SDL_thread.o
OBJECTS += $(OBJDIR)/SDL_timer.o
OBJECTS += $(OBJDIR)/SDL_touch.o
OBJECTS += $(OBJDIR)/SDL_video.o
OBJECTS += $(OBJDIR)/SDL_vulkan_utils.o
OBJECTS += $(OBJDIR)/SDL_wasapi.o
OBJECTS += $(OBJDIR)/SDL_wasapi_win32.o
OBJECTS += $(OBJDIR)/SDL_wave.o
OBJECTS += $(OBJDIR)/SDL_windowevents.o
OBJECTS += $(OBJDIR)/SDL_windows.o
OBJECTS += $(OBJDIR)/SDL_windowsclipboard.o
OBJECTS += $(OBJDIR)/SDL_windowsevents.o
OBJECTS += $(OBJDIR)/SDL_windowsframebuffer.o
OBJECTS += $(OBJDIR)/SDL_windowshaptic.o
OBJECTS += $(OBJDIR)/SDL_windowsjoystick.o
OBJECTS += $(OBJDIR)/SDL_windowskeyboard.o
OBJECTS += $(OBJDIR)/SDL_windowsmessagebox.o
OBJECTS += $(OBJDIR)/SDL_windowsmodes.o
OBJECTS += $(OBJDIR)/SDL_windowsmouse.o
OBJECTS += $(OBJDIR)/SDL_windowsopengl.o
OBJECTS += $(OBJDIR)/SDL_windowsopengles.o
OBJECTS += $(OBJDIR)/SDL_windowsshape.o
OBJECTS += $(OBJDIR)/SDL_windowsvideo.o
OBJECTS += $(OBJDIR)/SDL_windowsvulkan.o
OBJECTS += $(OBJDIR)/SDL_windowswindow.o
OBJECTS += $(OBJDIR)/SDL_winmm.o
OBJECTS += $(OBJDIR)/SDL_xinput.o
OBJECTS += $(OBJDIR)/SDL_xinputhaptic.o
OBJECTS += $(OBJDIR)/SDL_xinputjoystick.o
OBJECTS += $(OBJDIR)/SDL_yuv.o
OBJECTS += $(OBJDIR)/SDL_yuv_sw.o
OBJECTS += $(OBJDIR)/e_atan2.o
OBJECTS += $(OBJDIR)/e_exp.o
OBJECTS += $(OBJDIR)/e_fmod.o
OBJECTS += $(OBJDIR)/e_log.o
OBJECTS += $(OBJDIR)/e_log10.o
OBJECTS += $(OBJDIR)/e_pow.o
OBJECTS += $(OBJDIR)/e_rem_pio2.o
OBJECTS += $(OBJDIR)/e_sqrt.o
OBJECTS += $(OBJDIR)/hid.o
OBJECTS += $(OBJDIR)/k_cos.o
OBJECTS += $(OBJDIR)/k_rem_pio2.o
OBJECTS += $(OBJDIR)/k_sin.o
OBJECTS += $(OBJDIR)/k_tan.o
OBJECTS += $(OBJDIR)/s_atan.o
OBJECTS += $(OBJDIR)/s_copysign.o
OBJECTS += $(OBJDIR)/s_cos.o
OBJECTS += $(OBJDIR)/s_fabs.o
OBJECTS += $(OBJDIR)/s_floor.o
OBJECTS += $(OBJDIR)/s_scalbn.o
OBJECTS += $(OBJDIR)/s_sin.o
OBJECTS += $(OBJDIR)/s_tan.o
OBJECTS += $(OBJDIR)/yuv_rgb.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking SDL2
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning SDL2
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) rmdir /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/SDL.o: ../../../src/SDL.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_assert.o: ../../../src/SDL_assert.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_dataqueue.o: ../../../src/SDL_dataqueue.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_error.o: ../../../src/SDL_error.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_hints.o: ../../../src/SDL_hints.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_log.o: ../../../src/SDL_log.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_atomic.o: ../../../src/atomic/SDL_atomic.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_spinlock.o: ../../../src/atomic/SDL_spinlock.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_audio.o: ../../../src/audio/SDL_audio.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_audiocvt.o: ../../../src/audio/SDL_audiocvt.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_audiodev.o: ../../../src/audio/SDL_audiodev.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_audiotypecvt.o: ../../../src/audio/SDL_audiotypecvt.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_mixer.o: ../../../src/audio/SDL_mixer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_wave.o: ../../../src/audio/SDL_wave.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_directsound.o: ../../../src/audio/directsound/SDL_directsound.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_diskaudio.o: ../../../src/audio/disk/SDL_diskaudio.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_dummyaudio.o: ../../../src/audio/dummy/SDL_dummyaudio.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_wasapi.o: ../../../src/audio/wasapi/SDL_wasapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_wasapi_win32.o: ../../../src/audio/wasapi/SDL_wasapi_win32.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_winmm.o: ../../../src/audio/winmm/SDL_winmm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windows.o: ../../../src/core/windows/SDL_windows.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_xinput.o: ../../../src/core/windows/SDL_xinput.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_cpuinfo.o: ../../../src/cpuinfo/SDL_cpuinfo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_dynapi.o: ../../../src/dynapi/SDL_dynapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_clipboardevents.o: ../../../src/events/SDL_clipboardevents.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_displayevents.o: ../../../src/events/SDL_displayevents.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_dropevents.o: ../../../src/events/SDL_dropevents.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_events.o: ../../../src/events/SDL_events.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_gesture.o: ../../../src/events/SDL_gesture.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_keyboard.o: ../../../src/events/SDL_keyboard.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_mouse.o: ../../../src/events/SDL_mouse.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_quit.o: ../../../src/events/SDL_quit.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_touch.o: ../../../src/events/SDL_touch.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowevents.o: ../../../src/events/SDL_windowevents.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_rwops.o: ../../../src/file/SDL_rwops.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_sysfilesystem.o: ../../../src/filesystem/windows/SDL_sysfilesystem.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_haptic.o: ../../../src/haptic/SDL_haptic.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_dinputhaptic.o: ../../../src/haptic/windows/SDL_dinputhaptic.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowshaptic.o: ../../../src/haptic/windows/SDL_windowshaptic.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_xinputhaptic.o: ../../../src/haptic/windows/SDL_xinputhaptic.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hid.o: ../../../src/hidapi/windows/hid.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_gamecontroller.o: ../../../src/joystick/SDL_gamecontroller.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_joystick.o: ../../../src/joystick/SDL_joystick.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_hidapi_ps4.o: ../../../src/joystick/hidapi/SDL_hidapi_ps4.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_hidapi_switch.o: ../../../src/joystick/hidapi/SDL_hidapi_switch.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_hidapi_xbox360.o: ../../../src/joystick/hidapi/SDL_hidapi_xbox360.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_hidapi_xboxone.o: ../../../src/joystick/hidapi/SDL_hidapi_xboxone.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_hidapijoystick.o: ../../../src/joystick/hidapi/SDL_hidapijoystick.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_dinputjoystick.o: ../../../src/joystick/windows/SDL_dinputjoystick.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_mmjoystick.o: ../../../src/joystick/windows/SDL_mmjoystick.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsjoystick.o: ../../../src/joystick/windows/SDL_windowsjoystick.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_xinputjoystick.o: ../../../src/joystick/windows/SDL_xinputjoystick.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/e_atan2.o: ../../../src/libm/e_atan2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/e_exp.o: ../../../src/libm/e_exp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/e_fmod.o: ../../../src/libm/e_fmod.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/e_log.o: ../../../src/libm/e_log.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/e_log10.o: ../../../src/libm/e_log10.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/e_pow.o: ../../../src/libm/e_pow.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/e_rem_pio2.o: ../../../src/libm/e_rem_pio2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/e_sqrt.o: ../../../src/libm/e_sqrt.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/k_cos.o: ../../../src/libm/k_cos.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/k_rem_pio2.o: ../../../src/libm/k_rem_pio2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/k_sin.o: ../../../src/libm/k_sin.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/k_tan.o: ../../../src/libm/k_tan.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/s_atan.o: ../../../src/libm/s_atan.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/s_copysign.o: ../../../src/libm/s_copysign.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/s_cos.o: ../../../src/libm/s_cos.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/s_fabs.o: ../../../src/libm/s_fabs.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/s_floor.o: ../../../src/libm/s_floor.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/s_scalbn.o: ../../../src/libm/s_scalbn.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/s_sin.o: ../../../src/libm/s_sin.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/s_tan.o: ../../../src/libm/s_tan.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_sysloadso.o: ../../../src/loadso/windows/SDL_sysloadso.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_power.o: ../../../src/power/SDL_power.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_syspower.o: ../../../src/power/windows/SDL_syspower.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_d3dmath.o: ../../../src/render/SDL_d3dmath.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_render.o: ../../../src/render/SDL_render.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_yuv_sw.o: ../../../src/render/SDL_yuv_sw.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_render_d3d.o: ../../../src/render/direct3d/SDL_render_d3d.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_shaders_d3d.o: ../../../src/render/direct3d/SDL_shaders_d3d.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_render_d3d11.o: ../../../src/render/direct3d11/SDL_render_d3d11.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_shaders_d3d11.o: ../../../src/render/direct3d11/SDL_shaders_d3d11.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_render_gl.o: ../../../src/render/opengl/SDL_render_gl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_shaders_gl.o: ../../../src/render/opengl/SDL_shaders_gl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_render_gles2.o: ../../../src/render/opengles2/SDL_render_gles2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_shaders_gles2.o: ../../../src/render/opengles2/SDL_shaders_gles2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_blendfillrect.o: ../../../src/render/software/SDL_blendfillrect.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_blendline.o: ../../../src/render/software/SDL_blendline.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_blendpoint.o: ../../../src/render/software/SDL_blendpoint.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_drawline.o: ../../../src/render/software/SDL_drawline.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_drawpoint.o: ../../../src/render/software/SDL_drawpoint.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_render_sw.o: ../../../src/render/software/SDL_render_sw.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_rotate.o: ../../../src/render/software/SDL_rotate.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_sensor.o: ../../../src/sensor/SDL_sensor.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_dummysensor.o: ../../../src/sensor/dummy/SDL_dummysensor.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_getenv.o: ../../../src/stdlib/SDL_getenv.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_iconv.o: ../../../src/stdlib/SDL_iconv.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_malloc.o: ../../../src/stdlib/SDL_malloc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_qsort.o: ../../../src/stdlib/SDL_qsort.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_stdlib.o: ../../../src/stdlib/SDL_stdlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_string.o: ../../../src/stdlib/SDL_string.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_thread.o: ../../../src/thread/SDL_thread.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_syscond.o: ../../../src/thread/generic/SDL_syscond.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_sysmutex.o: ../../../src/thread/windows/SDL_sysmutex.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_syssem.o: ../../../src/thread/windows/SDL_syssem.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_systhread.o: ../../../src/thread/windows/SDL_systhread.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_systls.o: ../../../src/thread/windows/SDL_systls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_timer.o: ../../../src/timer/SDL_timer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_systimer.o: ../../../src/timer/windows/SDL_systimer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_RLEaccel.o: ../../../src/video/SDL_RLEaccel.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_blit.o: ../../../src/video/SDL_blit.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_blit_0.o: ../../../src/video/SDL_blit_0.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_blit_1.o: ../../../src/video/SDL_blit_1.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_blit_A.o: ../../../src/video/SDL_blit_A.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_blit_N.o: ../../../src/video/SDL_blit_N.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_blit_auto.o: ../../../src/video/SDL_blit_auto.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_blit_copy.o: ../../../src/video/SDL_blit_copy.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_blit_slow.o: ../../../src/video/SDL_blit_slow.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_bmp.o: ../../../src/video/SDL_bmp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_clipboard.o: ../../../src/video/SDL_clipboard.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_egl.o: ../../../src/video/SDL_egl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_fillrect.o: ../../../src/video/SDL_fillrect.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_pixels.o: ../../../src/video/SDL_pixels.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_rect.o: ../../../src/video/SDL_rect.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_shape.o: ../../../src/video/SDL_shape.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_stretch.o: ../../../src/video/SDL_stretch.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_surface.o: ../../../src/video/SDL_surface.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_video.o: ../../../src/video/SDL_video.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_vulkan_utils.o: ../../../src/video/SDL_vulkan_utils.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_yuv.o: ../../../src/video/SDL_yuv.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_nullevents.o: ../../../src/video/dummy/SDL_nullevents.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_nullframebuffer.o: ../../../src/video/dummy/SDL_nullframebuffer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_nullvideo.o: ../../../src/video/dummy/SDL_nullvideo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsclipboard.o: ../../../src/video/windows/SDL_windowsclipboard.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsevents.o: ../../../src/video/windows/SDL_windowsevents.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsframebuffer.o: ../../../src/video/windows/SDL_windowsframebuffer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowskeyboard.o: ../../../src/video/windows/SDL_windowskeyboard.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsmessagebox.o: ../../../src/video/windows/SDL_windowsmessagebox.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsmodes.o: ../../../src/video/windows/SDL_windowsmodes.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsmouse.o: ../../../src/video/windows/SDL_windowsmouse.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsopengl.o: ../../../src/video/windows/SDL_windowsopengl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsopengles.o: ../../../src/video/windows/SDL_windowsopengles.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsshape.o: ../../../src/video/windows/SDL_windowsshape.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsvideo.o: ../../../src/video/windows/SDL_windowsvideo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowsvulkan.o: ../../../src/video/windows/SDL_windowsvulkan.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SDL_windowswindow.o: ../../../src/video/windows/SDL_windowswindow.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/yuv_rgb.o: ../../../src/video/yuv2rgb/yuv_rgb.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif