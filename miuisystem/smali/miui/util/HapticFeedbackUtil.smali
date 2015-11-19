.class public Lmiui/util/HapticFeedbackUtil;
.super Ljava/lang/Object;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/HapticFeedbackUtil$SettingsObserver;
    }
.end annotation


# static fields
.field public static final EFFECT_KEY_CALCULATOR:Ljava/lang/String; = "calculator"

.field public static final EFFECT_KEY_CLOCK_PICKER:Ljava/lang/String; = "clock_picker"

.field public static final EFFECT_KEY_CLOCK_SECOND:Ljava/lang/String; = "clock_second"

.field public static final EFFECT_KEY_COMPASS_CALIBRATION:Ljava/lang/String; = "compass_calibration"

.field public static final EFFECT_KEY_COMPASS_NORTH:Ljava/lang/String; = "compass_north"

.field public static final EFFECT_KEY_HOME_DROP_FINISH:Ljava/lang/String; = "home_drop_finish"

.field public static final EFFECT_KEY_HOME_PICKUP_START:Ljava/lang/String; = "home_pickup_start"

.field public static final EFFECT_KEY_RECORDER_DELETE:Ljava/lang/String; = "recorder_delete"

.field public static final EFFECT_KEY_RECORDER_FINISH:Ljava/lang/String; = "recorder_finish"

.field public static final EFFECT_KEY_RECORDER_LIST:Ljava/lang/String; = "recorder_list"

.field public static final EFFECT_KEY_RECORDER_PAUSE:Ljava/lang/String; = "recorder_pause"

.field public static final EFFECT_KEY_RECORDER_PLAY:Ljava/lang/String; = "recorder_play"

.field public static final EFFECT_KEY_RECORDER_RECORD:Ljava/lang/String; = "recorder_record"

.field public static final EFFECT_KEY_RECORDER_RECORD_PAUSE:Ljava/lang/String; = "recorder_record_pause"

.field public static final EFFECT_KEY_RECORDER_REWIND:Ljava/lang/String; = "recorder_rewind"

.field public static final EFFECT_KEY_RECORDER_SLIDER:Ljava/lang/String; = "recorder_slider"

.field public static final EFFECT_KEY_RECORDER_STOP:Ljava/lang/String; = "recorder_stop"

.field public static final EFFECT_KEY_SCREEN_BUTTON_RECENT_TASK:Ljava/lang/String; = "screen_button_recent_task"

.field public static final EFFECT_KEY_SCREEN_BUTTON_VOICE_ASSIST:Ljava/lang/String; = "screen_button_voice_assist"

.field public static final EFFECT_KEY_TORCH_OFF:Ljava/lang/String; = "torch_off"

.field public static final EFFECT_KEY_TORCH_ON:Ljava/lang/String; = "torch_on"

.field public static final EFFECT_KEY_VIRTUAL_KEY_DOWN:Ljava/lang/String; = "virtual_key_down"

.field public static final EFFECT_KEY_VIRTUAL_KEY_LONGPRESS:Ljava/lang/String; = "virtual_key_longpress"

.field public static final EFFECT_KEY_VIRTUAL_KEY_TAP:Ljava/lang/String; = "virtual_key_tap"

.field public static final EFFECT_KEY_VIRTUAL_KEY_UP:Ljava/lang/String; = "virtual_key_up"

.field private static final ID_TO_KEY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_IMMERSION_ENABLED:Z = false

.field private static final KEY_VIBRATE_EX_ENABLED:Ljava/lang/String; = "ro.haptic.vibrate_ex.enabled"

.field private static final LEVEL_FACTOR:[F

.field private static final LEVEL_SUFFIX:[Ljava/lang/String;

.field private static final PROPERTY_KEY:Ljava/util/HashMap;
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

.field private static final TAG:Ljava/lang/String; = "HapticFeedbackUtil"

.field private static final sPatternId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPatterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLevel:I

.field private mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 31
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, ".weak"

    aput-object v1, v0, v3

    const-string v1, ".normal"

    aput-object v1, v0, v4

    const-string v1, ".strong"

    aput-object v1, v0, v5

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->LEVEL_SUFFIX:[Ljava/lang/String;

    .line 37
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->LEVEL_FACTOR:[F

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    .line 68
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const-string v1, "virtual_key_down"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const-string v1, "virtual_key_longpress"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const-string v1, "virtual_key_tap"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const-string v1, "virtual_key_up"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    .line 106
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "virtual_key_down"

    const-string v2, "sys.haptic.down"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "virtual_key_longpress"

    const-string v2, "sys.haptic.long"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "virtual_key_tap"

    const-string v2, "sys.haptic.tap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "virtual_key_up"

    const-string v2, "sys.haptic.up"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    return-void

    .line 37
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "onceOnly"    # Z

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 77
    .local v3, "sr":Landroid/content/res/Resources;
    const-string v4, "config_longPressVibePattern"

    const-string v5, "array"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, "config_longPressVibePattern":I
    const-string v4, "config_virtualKeyVibePattern"

    const-string v5, "array"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 79
    .local v2, "config_virtualKeyVibePattern":I
    const-string v4, "config_keyboardTapVibePattern"

    const-string v5, "array"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "config_keyboardTapVibePattern":I
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "compass_north"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "home_pickup_start"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_delete"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_minor_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_finish"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_minor_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_list"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_minor_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_pause"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_major_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_play"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_major_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_record"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_major_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_record_pause"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_major_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_rewind"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_rewind:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_slider"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_slider:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_stop"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_major_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "screen_button_recent_task"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "screen_button_voice_assist"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "torch_off"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_torch_off:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "torch_on"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_torch_on:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "virtual_key_longpress"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "virtual_key_down"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "virtual_key_tap"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "virtual_key_up"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_virtual_key_up:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/4 v4, 0x1

    iput v4, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    .line 125
    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    .line 126
    iget-object v4, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    .line 127
    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v4, Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;-><init>(Lmiui/util/HapticFeedbackUtil;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    .line 131
    iget-object v4, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    invoke-virtual {v4}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->observe()V

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/util/HapticFeedbackUtil;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/HapticFeedbackUtil;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lmiui/util/HapticFeedbackUtil;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "resid"    # I

    .prologue
    .line 251
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 252
    .local v0, "ar":[I
    if-nez v0, :cond_1

    .line 253
    const/4 v2, 0x0

    .line 259
    :cond_0
    return-object v2

    .line 255
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 256
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 257
    aget v3, v0, v1

    int-to-float v3, v3

    sget-object v4, Lmiui/util/HapticFeedbackUtil;->LEVEL_FACTOR:[F

    iget v5, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-long v4, v3

    aput-wide v4, v2, v1

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadPattern(Ljava/lang/String;)[J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, "result":[J
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, "propertyKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lmiui/util/HapticFeedbackUtil;->LEVEL_SUFFIX:[Ljava/lang/String;

    iget v5, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/util/HapticFeedbackUtil;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 238
    :cond_0
    if-nez v2, :cond_1

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 241
    .local v0, "id":I
    :try_start_0
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 244
    :goto_0
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lmiui/util/HapticFeedbackUtil;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    .line 247
    .end local v0    # "id":I
    :cond_1
    return-object v2

    .line 242
    .restart local v0    # "id":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private stringToLongArray(Ljava/lang/String;)[J
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 271
    :cond_0
    return-object v2

    .line 265
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "splitStr":[Ljava/lang/String;
    array-length v1, v3

    .line 267
    .local v1, "los":I
    new-array v2, v1, [J

    .line 268
    .local v2, "returnByte":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 269
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isSupportedEffect(I)Z
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 142
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 1
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .prologue
    .line 183
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    iget-object v4, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-nez v4, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v2

    .line 191
    :cond_1
    iget-object v4, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    move v0, v3

    .line 193
    .local v0, "hapticsDisabled":Z
    :goto_1
    if-nez p2, :cond_2

    if-nez v0, :cond_0

    .line 197
    :cond_2
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 198
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lmiui/util/HapticFeedbackUtil;->loadPattern(Ljava/lang/String;)[J

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_3
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 202
    .local v1, "pattern":[J
    if-eqz v1, :cond_4

    array-length v4, v1

    if-nez v4, :cond_6

    .line 203
    :cond_4
    const-string v3, "HapticFeedbackUtil"

    const-string v4, "vibrate: null or empty pattern"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "hapticsDisabled":Z
    .end local v1    # "pattern":[J
    :cond_5
    move v0, v2

    .line 191
    goto :goto_1

    .line 207
    .restart local v0    # "hapticsDisabled":Z
    .restart local v1    # "pattern":[J
    :cond_6
    array-length v2, v1

    if-ne v2, v3, :cond_7

    .line 209
    new-instance v2, Lmiui/util/HapticFeedbackUtil$1;

    invoke-direct {v2, p0, v1}, Lmiui/util/HapticFeedbackUtil$1;-><init>(Lmiui/util/HapticFeedbackUtil;[J)V

    invoke-virtual {v2}, Lmiui/util/HapticFeedbackUtil$1;->start()V

    :goto_2
    move v2, v3

    .line 223
    goto :goto_0

    .line 216
    :cond_7
    new-instance v2, Lmiui/util/HapticFeedbackUtil$2;

    invoke-direct {v2, p0, v1}, Lmiui/util/HapticFeedbackUtil$2;-><init>(Lmiui/util/HapticFeedbackUtil;[J)V

    invoke-virtual {v2}, Lmiui/util/HapticFeedbackUtil$2;->start()V

    goto :goto_2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->unobserve()V

    .line 139
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public updateImmersionSettings(Z)V
    .locals 0
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 180
    return-void
.end method

.method public updateSettings()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    .line 173
    const/4 v0, 0x2

    const/4 v1, 0x0

    iget v2, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    .line 176
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 177
    return-void
.end method
