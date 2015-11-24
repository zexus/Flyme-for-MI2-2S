.class public Lcom/android/settings_ext/display/ScreenEffect;
.super Lmiui/preference/PreferenceActivity;
.source "ScreenEffect.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final VU:[Ljava/lang/String;

.field private static final VV:[I

.field private static final VW:I

.field private static final VX:[I

.field private static final VY:I

.field private static final VZ:[Ljava/lang/String;

.field private static final Wa:[I


# instance fields
.field private Wb:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "screen_optimize_adapt"

    aput-object v1, v0, v5

    const-string v1, "screen_optimize_enhance"

    aput-object v1, v0, v2

    const-string v1, "screen_optimize_standard"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings_ext/display/ScreenEffect;->VU:[Ljava/lang/String;

    .line 69
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ext/display/ScreenEffect;->VV:[I

    .line 76
    const-string v0, "screen_standard_mode"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings_ext/display/ScreenEffect;->VW:I

    .line 84
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ext/display/ScreenEffect;->VX:[I

    .line 90
    invoke-static {}, Landroid/provider/MiuiSettings$System;->getDefaultScreenSaturationMode()I

    move-result v0

    sput v0, Lcom/android/settings_ext/display/ScreenEffect;->VY:I

    .line 92
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "screen_saturation_vivid"

    aput-object v1, v0, v5

    const-string v1, "screen_saturation_standard"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings_ext/display/ScreenEffect;->VZ:[Ljava/lang/String;

    .line 96
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ext/display/ScreenEffect;->Wa:[I

    return-void

    .line 69
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 84
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 96
    :array_2
    .array-data 4
        0xb
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;[II)I
    .locals 3

    .prologue
    .line 216
    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 217
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 218
    aget v2, p2, v0

    if-ne v2, v1, :cond_1

    move p3, v1

    .line 222
    :cond_0
    return p3

    .line 217
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bA(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    packed-switch p0, :pswitch_data_0

    .line 334
    :goto_0
    return-void

    .line 317
    :pswitch_0
    const-string v0, "persist.sys.ltm_enable"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "persist.sys.gamut_mode"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :pswitch_1
    const-string v0, "persist.sys.ltm_enable"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "persist.sys.gamut_mode"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :pswitch_2
    const-string v0, "persist.sys.ltm_enable"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v0, "persist.sys.gamut_mode"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bz(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    packed-switch p1, :pswitch_data_0

    .line 262
    :goto_0
    sget v0, Lcom/android/settings_ext/display/ScreenEffect;->VW:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 263
    const-string v1, "persist.sys.display_ce"

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/16 v0, 0xa

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    return-void

    .line 241
    :pswitch_0
    const-string v0, "persist.sys.ltm_enable"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "persist.sys.gamut_mode"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "persist.sys.display_cabc"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_1
    const-string v0, "persist.sys.ltm_enable"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "persist.sys.gamut_mode"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "persist.sys.display_cabc"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_2
    const-string v0, "persist.sys.ltm_enable"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "persist.sys.gamut_mode"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "persist.sys.display_cabc"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_1
    const/16 v0, 0xb

    goto :goto_1

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private h(Ljava/lang/String;I)Landroid/preference/PreferenceCategory;
    .locals 3

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ext/display/ScreenEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 192
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, p2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 195
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 197
    return-object v1
.end method

.method private i(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 226
    const-string v0, "screen_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 228
    const-string v0, "persist.sys.display_prefer"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const-string v0, "screen_saturation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "persist.sys.display_prefer"

    sget v1, Lcom/android/settings_ext/display/ScreenEffect;->VY:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 231
    const-string v0, "persist.sys.display_ce"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_2
    const-string v0, "screen_optimize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ext/display/ScreenEffect;->Wb:I

    if-eq v0, p2, :cond_0

    .line 233
    iput p2, p0, Lcom/android/settings_ext/display/ScreenEffect;->Wb:I

    .line 234
    invoke-direct {p0, p2}, Lcom/android/settings_ext/display/ScreenEffect;->bz(I)V

    goto :goto_0
.end method

.method private oH()V
    .locals 4

    .prologue
    .line 131
    const-string v0, "persist.sys.display_prefer"

    sget-object v1, Lcom/android/settings_ext/display/ScreenEffect;->VX:[I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ext/display/ScreenEffect;->a(Ljava/lang/String;[II)I

    move-result v0

    .line 133
    const-string v1, "screen_color"

    const v2, 0x7f090c3b

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ext/display/ScreenEffect;->h(Ljava/lang/String;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    .line 135
    new-instance v2, Lcom/android/settings_ext/display/o;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/display/o;-><init>(Landroid/content/Context;)V

    .line 136
    const-string v3, "screen_color_level"

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/display/o;->setKey(Ljava/lang/String;)V

    .line 137
    const v3, 0x7f0b009b

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/display/o;->bs(I)V

    .line 138
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/display/o;->setPersistent(Z)V

    .line 139
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Lcom/android/settings_ext/display/o;->setLevel(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ext/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020248

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings_ext/display/o;->b(Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-virtual {v2, p0}, Lcom/android/settings_ext/display/o;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 143
    return-void
.end method

.method private oI()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 146
    const-string v0, "screen_optimize"

    const v2, 0x7f090c3f

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ext/display/ScreenEffect;->h(Ljava/lang/String;I)Landroid/preference/PreferenceCategory;

    move-result-object v3

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ext/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b009d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ext/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b009e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-static {}, Lcom/android/settings_ext/display/ScreenEffect;->oK()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/display/ScreenEffect;->Wb:I

    move v0, v1

    .line 155
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_2

    .line 156
    sget v2, Lcom/android/settings_ext/display/ScreenEffect;->VW:I

    if-nez v2, :cond_0

    const-string v2, "screen_optimize_standard"

    sget-object v6, Lcom/android/settings_ext/display/ScreenEffect;->VU:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    new-instance v6, Lcom/android/settings_ext/display/E;

    invoke-direct {v6, p0}, Lcom/android/settings_ext/display/E;-><init>(Landroid/content/Context;)V

    .line 161
    sget-object v2, Lcom/android/settings_ext/display/ScreenEffect;->VU:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v6, v2}, Lcom/android/settings_ext/display/E;->setKey(Ljava/lang/String;)V

    .line 162
    aget-object v2, v4, v0

    invoke-virtual {v6, v2}, Lcom/android/settings_ext/display/E;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    aget-object v2, v5, v0

    invoke-virtual {v6, v2}, Lcom/android/settings_ext/display/E;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v6, v1}, Lcom/android/settings_ext/display/E;->setPersistent(Z)V

    .line 165
    invoke-virtual {v6, p0}, Lcom/android/settings_ext/display/E;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    sget-object v2, Lcom/android/settings_ext/display/ScreenEffect;->VV:[I

    aget v2, v2, v0

    iget v7, p0, Lcom/android/settings_ext/display/ScreenEffect;->Wb:I

    if-ne v2, v7, :cond_1

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v6, v2}, Lcom/android/settings_ext/display/E;->setChecked(Z)V

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    .line 170
    :cond_2
    return-void
.end method

.method private oJ()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 173
    const-string v0, "persist.sys.display_ce"

    sget-object v2, Lcom/android/settings_ext/display/ScreenEffect;->Wa:[I

    sget v3, Lcom/android/settings_ext/display/ScreenEffect;->VY:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings_ext/display/ScreenEffect;->a(Ljava/lang/String;[II)I

    move-result v3

    .line 175
    const-string v0, "screen_saturation"

    const v2, 0x7f090c3c

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ext/display/ScreenEffect;->h(Ljava/lang/String;I)Landroid/preference/PreferenceCategory;

    move-result-object v4

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ext/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b009c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .line 179
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_1

    .line 180
    new-instance v6, Lcom/android/settings_ext/display/E;

    invoke-direct {v6, p0}, Lcom/android/settings_ext/display/E;-><init>(Landroid/content/Context;)V

    .line 181
    sget-object v2, Lcom/android/settings_ext/display/ScreenEffect;->VZ:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v6, v2}, Lcom/android/settings_ext/display/E;->setKey(Ljava/lang/String;)V

    .line 182
    aget-object v2, v5, v0

    invoke-virtual {v6, v2}, Lcom/android/settings_ext/display/E;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v6, v1}, Lcom/android/settings_ext/display/E;->setPersistent(Z)V

    .line 184
    sget-object v2, Lcom/android/settings_ext/display/ScreenEffect;->Wa:[I

    aget v2, v2, v0

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v6, v2}, Lcom/android/settings_ext/display/E;->setChecked(Z)V

    .line 185
    invoke-virtual {v6, p0}, Lcom/android/settings_ext/display/E;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 184
    goto :goto_1

    .line 188
    :cond_1
    return-void
.end method

.method public static oK()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 201
    const-string v1, "persist.sys.ltm_enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 202
    const-string v2, "persist.sys.gamut_mode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 203
    const-string v3, "persist.sys.display_cabc"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 205
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    if-ne v3, v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    if-nez v1, :cond_2

    if-ne v2, v0, :cond_2

    if-nez v3, :cond_2

    .line 208
    const/4 v0, 0x3

    goto :goto_0

    .line 209
    :cond_2
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 210
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ext/display/ScreenEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 272
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .line 273
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 274
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/display/E;

    .line 276
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Lcom/android/settings_ext/display/E;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings_ext/display/E;->setChecked(Z)V

    .line 273
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 280
    :cond_1
    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 0

    .prologue
    .line 338
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onContentChanged()V

    .line 339
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f0400ed

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/ScreenEffect;->setContentView(I)V

    .line 108
    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/ScreenEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ext/display/G;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/display/G;-><init>(Lcom/android/settings_ext/display/ScreenEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/ScreenEffect;->addPreferencesFromResource(I)V

    .line 117
    invoke-direct {p0}, Lcom/android/settings_ext/display/ScreenEffect;->oH()V

    .line 119
    const v0, 0x7f100052

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/ScreenEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    const-string v1, "support_screen_optimize"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ext/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c40

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0}, Lcom/android/settings_ext/display/ScreenEffect;->oI()V

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c3d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-direct {p0}, Lcom/android/settings_ext/display/ScreenEffect;->oJ()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 284
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 285
    const/4 v1, -0x1

    .line 286
    const-string v0, ""

    .line 287
    const-string v4, "screen_color_level"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    const-string v1, "screen_color"

    move-object v0, p1

    .line 289
    check-cast v0, Lcom/android/settings_ext/display/o;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/settings_ext/display/o;->bt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    .line 306
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/display/ScreenEffect;->i(Ljava/lang/String;I)V

    .line 307
    instance-of v1, p1, Lcom/android/settings_ext/display/E;

    if-eqz v1, :cond_1

    .line 308
    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/display/ScreenEffect;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v2, 0x0

    .line 311
    :cond_1
    return v2

    .line 290
    :cond_2
    const-string v4, "screen_optimize_adapt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 291
    const-string v0, "screen_optimize"

    move v1, v2

    .line 292
    goto :goto_0

    .line 293
    :cond_3
    const-string v4, "screen_optimize_enhance"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 294
    const-string v0, "screen_optimize"

    .line 295
    const/4 v1, 0x2

    goto :goto_0

    .line 296
    :cond_4
    const-string v4, "screen_optimize_standard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 297
    const-string v0, "screen_optimize"

    .line 298
    const/4 v1, 0x3

    goto :goto_0

    .line 299
    :cond_5
    const-string v4, "screen_saturation_standard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 300
    const-string v0, "screen_saturation"

    .line 301
    const/16 v1, 0xa

    goto :goto_0

    .line 302
    :cond_6
    const-string v4, "screen_saturation_vivid"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    const-string v0, "screen_saturation"

    .line 304
    const/16 v1, 0xb

    goto :goto_0
.end method
