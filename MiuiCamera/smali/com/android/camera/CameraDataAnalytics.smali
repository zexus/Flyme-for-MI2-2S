.class public Lcom/android/camera/CameraDataAnalytics;
.super Ljava/lang/Object;
.source "CameraDataAnalytics.java"


# static fields
.field private static final PREFERENCE_FILE_PATH:Ljava/lang/String;

.field private static sAnalytics:Lcom/android/camera/CameraDataAnalytics;

.field private static sMoreParameter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTrackEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnalytics:Lmiui/analytics/Analytics;

.field private mPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->sMoreParameter:Ljava/util/Map;

    .line 196
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sMoreParameter:Ljava/util/Map;

    const-string v1, "_priv_model_"

    sget-object v2, Lcom/android/camera/Device;->MODULE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sMoreParameter:Ljava/util/Map;

    const-string v1, "_priv_version_"

    const-string v2, "V6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data_analytics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->PREFERENCE_FILE_PATH:Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    .line 205
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "camera_picture_taken_key"

    const-string v2, "\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_recorded_key"

    const-string v2, "\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "scroll_to_menu_key"

    const-string v2, "\u6ed1\u52a8\u5230Menu\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "scroll_to_effect_key"

    const-string v2, "\u6ed1\u52a8\u5230\u7279\u6548\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_panoramamode_key"

    const-string v2, "\u5168\u666f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_hdr_key"

    const-string v2, "HDR\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_face_beauty_mode_key"

    const-string v2, "\u7f8e\u989c\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_burst_shooting_key"

    const-string v2, "\u8fde\u62cd\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_manual_mode_key"

    const-string v2, "\u624b\u52a8\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_hand_night_key"

    const-string v2, "\u591c\u666f\u9632\u6296\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_ubifocus_key"

    const-string v2, "\u9b54\u672f\u5bf9\u7126\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_scenemode_key"

    const-string v2, "\u573a\u666f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_delay_capture_mode"

    const-string v2, "\u5ef6\u65f6\u5feb\u95e8\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_gradienter_key"

    const-string v2, "\u6c34\u5e73\u4eea\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_tilt_shift_key"

    const-string v2, "\u79fb\u8f74\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_fisheye_key"

    const-string v2, "\u9c7c\u773c\u955c\u5934\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_whitebalance_key"

    const-string v2, "\u767d\u5e73\u8861\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_focus_position_key"

    const-string v2, "\u5bf9\u7126\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_qc_camera_exposuretime_key"

    const-string v2, "\u5feb\u95e8\u65f6\u95f4\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_qc_camera_iso_key"

    const-string v2, "ISO\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "manual_whitebalance_key"

    const-string v2, "\u624b\u52a8\u767d\u5e73\u8861\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_shader_coloreffect_key"

    const-string v2, "\u6ee4\u955c\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_exposure_key"

    const-string v2, "\u66dd\u5149\u73af\u8c03\u8282\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_referenceline_key"

    const-string v2, "\u8f85\u52a9\u7ebf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_settings"

    const-string v2, "\u8bbe\u7f6e\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_focus_view"

    const-string v2, "\u66dd\u5149\u73af\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_volume"

    const-string v2, "\u97f3\u91cf\u952e\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_shutter"

    const-string v2, "\u62cd\u7167\u952e\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_audio"

    const-string v2, "\u58f0\u63a7\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_count_down"

    const-string v2, "\u5012\u8ba1\u65f6\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_count_down_3s"

    const-string v2, "\u5012\u8ba1\u65f63s\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_count_down_5s"

    const-string v2, "\u5012\u8ba1\u65f65s\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_count_down_10s"

    const-string v2, "\u5012\u8ba1\u65f610s\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_long_press"

    const-string v2, "\u957f\u6309\u5c4f\u5e55\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_t2t"

    const-string v2, "\u7269\u4f53\u8ffd\u8e2a\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "burst_times"

    const-string v2, "\u8fde\u62cd\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_normal_hdr"

    const-string v2, "\u6807\u51c6HDR\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_live_hdr"

    const-string v2, "\u5b9e\u65f6HDR\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_burst"

    const-string v2, "\u8fde\u62cd\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_beauty"

    const-string v2, "\u7f8e\u989c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_hht"

    const-string v2, "\u591c\u95f4\u9632\u6296\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_ubfocus"

    const-string v2, "\u9b54\u672f\u5bf9\u7126\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_manual"

    const-string v2, "\u624b\u52a8\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_gradienter"

    const-string v2, "\u6c34\u5e73\u4eea\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_tilt_shift"

    const-string v2, "\u79fb\u8f74\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_video_capture"

    const-string v2, "\u5f55\u50cf\u65f6\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_quick_snap"

    const-string v2, "\u8857\u62cd\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_nums_panorama"

    const-string v2, "\u5168\u666f\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_size_16_9"

    const-string v2, "\u5168\u5c4f\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "capture_times_size_4_3"

    const-string v2, "\u534a\u5c4f\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "t2t_times"

    const-string v2, "\u7269\u4f53\u8ffd\u8e2a\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "zoom_gesture_times"

    const-string v2, "\u624b\u52bfZOOM\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "zoom_volume_times"

    const-string v2, "\u97f3\u91cf\u952eZOOM\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_video_hdr_key"

    const-string v2, "HDR\u5f55\u50cf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_video_speed_fast_key"

    const-string v2, "\u5feb\u52a8\u4f5c\u5f55\u50cf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_video_speed_slow_key"

    const-string v2, "\u6162\u52a8\u4f5c\u5f55\u50cf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_fast_recording_times_key"

    const-string v2, "\u5feb\u52a8\u4f5c\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_slow_recording_times_key"

    const-string v2, "\u6162\u52a8\u4f5c\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_hdr_recording_times_key"

    const-string v2, "HDR\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_pause_recording_times_key"

    const-string v2, "\u5f55\u50cf\u6682\u505c\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_torch_recording_times_key"

    const-string v2, "\u5f00\u95ea\u5149\u706f\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_front_camera_recording_times_key"

    const-string v2, "\u524d\u7f6e\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_quality_4k_recording_times_key"

    const-string v2, "\u8d85\u9ad8\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_quality_1080_recording_times_key"

    const-string v2, "\u5168\u9ad8\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_quality_720_recording_times_key"

    const-string v2, "\u9ad8\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_quality_480_recording_times_key"

    const-string v2, "\u6807\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "open_camera_times_key"

    const-string v2, "\u76f8\u673a\u5f00\u542f\u6301\u7eed\u65f6\u95f4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "open_camera_fail_key"

    const-string v2, "\u76f8\u673a\u65e0\u6cd5\u8fde\u63a5\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "picture_with_location_key"

    const-string v2, "\u8bb0\u5f55\u4f4d\u7f6e\u4fe1\u606f\u56fe\u7247\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_with_location_key"

    const-string v2, "\u8bb0\u5f55\u4f4d\u7f6e\u4fe1\u606f\u89c6\u9891\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "front_camera_picture_taken_key"

    const-string v2, "\u81ea\u62cd\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "back_camera_picture_taken_key"

    const-string v2, "\u540e\u7f6e\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_gray_picture_taken_key"

    const-string v2, "\u9ed1\u767d\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_vivid_picture_taken_key"

    const-string v2, "\u751f\u52a8\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_yesteryear_picture_taken_key"

    const-string v2, "\u5f80\u6614\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_gaussian_picture_taken_key"

    const-string v2, "\u80cc\u666f\u865a\u5316\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_fisheye_picture_taken_key"

    const-string v2, "\u9c7c\u773c\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_mosaic_picture_taken_key"

    const-string v2, "\u9a6c\u8d5b\u514b\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_brannan_picture_taken_key"

    const-string v2, "\u6668\u5149\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_seventy_picture_taken_key"

    const-string v2, "\u5e74\u4ee370\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_jstyle_picture_taken_key"

    const-string v2, "\u65e5\u7cfb\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_earlybird_picture_taken_key"

    const-string v2, "\u79cb\u8272\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_nashvile_picture_taken_key"

    const-string v2, "\u975b\u9752\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_mirror_picture_taken_key"

    const-string v2, "\u955c\u9762\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "effect_sketch_picture_taken_key"

    const-string v2, "\u7d20\u63cf\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    .line 319
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraDataAnalytics;->PREFERENCE_FILE_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    .line 321
    return-void
.end method

.method public static instance()Lcom/android/camera/CameraDataAnalytics;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/android/camera/CameraDataAnalytics;

    invoke-direct {v0}, Lcom/android/camera/CameraDataAnalytics;-><init>()V

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    .line 313
    :cond_0
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    return-object v0
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 358
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 359
    return-void
.end method

.method public trackEvent(Ljava/lang/String;J)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # J

    .prologue
    .line 370
    if-nez p1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    sget-object v4, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 372
    .local v1, "trackEvent":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 373
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 374
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    invoke-interface {v4, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 375
    .local v2, "oldValue":J
    add-long v4, p2, v2

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public trackEventTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 363
    return-void
.end method

.method public uploadToServer()V
    .locals 14

    .prologue
    .line 324
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    const-string v11, "open_camera_times_key"

    const-wide/16 v12, 0x0

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 325
    .local v6, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v6

    .line 326
    .local v4, "lastTime":J
    const-wide/32 v10, 0x5265c00

    cmp-long v10, v4, v10

    if-gtz v10, :cond_0

    const-wide/16 v10, 0x7d0

    cmp-long v10, v4, v10

    if-gez v10, :cond_1

    .line 327
    :cond_0
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 329
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    :goto_0
    return-void

    .line 333
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmiui/analytics/Analytics;->startSession(Landroid/content/Context;)V

    .line 334
    sget-object v10, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 335
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 336
    .local v2, "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    const-wide/16 v12, 0x0

    invoke-interface {v10, v2, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 337
    .local v8, "value":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_2

    .line 338
    const-string v10, "open_camera_times_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 340
    iget-object v11, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    sget-object v10, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v12, Lcom/android/camera/CameraDataAnalytics;->sMoreParameter:Ljava/util/Map;

    invoke-virtual {v11, v10, v12, v4, v5}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 341
    const-string v11, "Camera"

    sget-object v10, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v11, v10, v4, v5}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 343
    :cond_3
    iget-object v11, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    sget-object v10, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v12, Lcom/android/camera/CameraDataAnalytics;->sMoreParameter:Ljava/util/Map;

    invoke-virtual {v11, v10, v12, v8, v9}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 344
    const-string v11, "Camera"

    sget-object v10, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v11, v10, v8, v9}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 348
    .end local v2    # "key":Ljava/lang/String;
    .end local v8    # "value":J
    :cond_4
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    invoke-virtual {v10}, Lmiui/analytics/Analytics;->endSession()V

    .line 350
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 351
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 354
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->triggerUploadManually()V

    goto/16 :goto_0
.end method
