.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private AE:Landroid/view/accessibility/CaptioningManager;

.field private AF:Lcom/android/internal/widget/SubtitleView;

.field private AG:Landroid/view/View;

.field private AH:Landroid/view/View;

.field private AI:Lcom/android/settings/accessibility/LocalePreference;

.field private AJ:Landroid/preference/ListPreference;

.field private AK:Lcom/android/settings/accessibility/PresetPreference;

.field private AL:Landroid/preference/ListPreference;

.field private AM:Lcom/android/settings/accessibility/ColorPreference;

.field private AN:Lcom/android/settings/accessibility/ColorPreference;

.field private AO:Lcom/android/settings/accessibility/EdgeTypePreference;

.field private AP:Lcom/android/settings/accessibility/ColorPreference;

.field private AQ:Lcom/android/settings/accessibility/ColorPreference;

.field private AR:Lcom/android/settings/accessibility/ColorPreference;

.field private AS:Lcom/android/settings/accessibility/ColorPreference;

.field private AT:Lcom/android/settings/accessibility/ColorPreference;

.field private AU:Landroid/preference/PreferenceCategory;

.field private AV:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private P(Z)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    move v1, v0

    .line 277
    :goto_0
    if-ge v1, v3, :cond_1

    .line 278
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 279
    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 280
    invoke-virtual {v4, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AF:Lcom/android/internal/widget/SubtitleView;

    if-eqz v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AF:Lcom/android/internal/widget/SubtitleView;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 286
    :cond_2
    return-void

    .line 284
    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I
    .locals 3

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    .line 414
    invoke-virtual {p2}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 416
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 417
    const v2, 0xffff00

    and-int/2addr v0, v2

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 421
    :goto_0
    return v0

    .line 419
    :cond_0
    const v2, 0xffffff

    and-int/2addr v0, v2

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 5

    .prologue
    const v4, 0x7f09066a

    .line 212
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 214
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 216
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    .line 217
    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    .line 221
    const v3, 0x3d5a511a    # 0.0533f

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 228
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_1

    .line 230
    invoke-static {v0, v1, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->a(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 232
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :goto_1
    return-void

    .line 223
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 225
    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->hP()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accessibility/CaptionPropertiesFragment;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->P(Z)V

    return-void
.end method

.method private a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V
    .locals 3

    .prologue
    const/high16 v2, -0x1000000

    .line 401
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 402
    const/4 v1, 0x0

    .line 403
    and-int/lit16 v0, p3, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 408
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 409
    const v1, 0xffffff

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 410
    return-void

    .line 405
    :cond_0
    or-int v1, p3, v2

    .line 406
    and-int v0, p3, v2

    goto :goto_0
.end method

.method private hI()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 302
    const-string v0, "captioning_locale"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AI:Lcom/android/settings/accessibility/LocalePreference;

    .line 303
    const-string v0, "captioning_font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AJ:Landroid/preference/ListPreference;

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 306
    const v0, 0x7f0b0043

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 307
    const v0, 0x7f0b0042

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 308
    const-string v0, "captioning_preset"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/PresetPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AK:Lcom/android/settings/accessibility/PresetPreference;

    .line 309
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AK:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/PresetPreference;->a([I)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AK:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/PresetPreference;->a([Ljava/lang/CharSequence;)V

    .line 312
    const-string v0, "custom"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    .line 313
    iput-boolean v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AV:Z

    .line 315
    const v0, 0x7f0b003f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 316
    const v0, 0x7f0b003e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 317
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    const-string v4, "captioning_foreground_color"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AM:Lcom/android/settings/accessibility/ColorPreference;

    .line 318
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AM:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AM:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 321
    const v0, 0x7f0b0041

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 322
    const v0, 0x7f0b0040

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 324
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    const-string v5, "captioning_foreground_opacity"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AN:Lcom/android/settings/accessibility/ColorPreference;

    .line 325
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AN:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AN:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    const-string v5, "captioning_edge_color"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AP:Lcom/android/settings/accessibility/ColorPreference;

    .line 329
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AP:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AP:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 333
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    .line 334
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 335
    array-length v0, v2

    invoke-static {v2, v7, v5, v8, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 336
    array-length v0, v3

    invoke-static {v3, v7, v6, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    aput v7, v5, v7

    .line 338
    const v0, 0x7f09066d

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 339
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    const-string v2, "captioning_background_color"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AQ:Lcom/android/settings/accessibility/ColorPreference;

    .line 340
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AQ:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v6}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AQ:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 343
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    const-string v2, "captioning_background_opacity"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AR:Lcom/android/settings/accessibility/ColorPreference;

    .line 344
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AR:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AR:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    const-string v2, "captioning_window_color"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AS:Lcom/android/settings/accessibility/ColorPreference;

    .line 348
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AS:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v6}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AS:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    const-string v2, "captioning_window_opacity"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AT:Lcom/android/settings/accessibility/ColorPreference;

    .line 352
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AT:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AT:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    const-string v1, "captioning_edge_type"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/EdgeTypePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AO:Lcom/android/settings/accessibility/EdgeTypePreference;

    .line 356
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    const-string v1, "captioning_typeface"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AL:Landroid/preference/ListPreference;

    .line 357
    return-void
.end method

.method private hJ()V
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AE:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AK:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/PresetPreference;->setValue(I)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AE:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AJ:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AO:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValue(I)V

    .line 385
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AP:Lcom/android/settings/accessibility/ColorPreference;

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 387
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AM:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AN:Lcom/android/settings/accessibility/ColorPreference;

    iget v3, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 388
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AQ:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AR:Lcom/android/settings/accessibility/ColorPreference;

    iget v3, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 389
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AS:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AT:Lcom/android/settings/accessibility/ColorPreference;

    iget v3, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 391
    iget-object v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 392
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AL:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AE:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AI:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private hP()V
    .locals 6

    .prologue
    const v5, 0x7f090669

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 181
    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AF:Lcom/android/internal/widget/SubtitleView;

    .line 187
    if-eqz v1, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AE:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v2

    .line 189
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AE:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AH:Landroid/view/View;

    invoke-static {v3, v1, v4, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 191
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AE:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 192
    if-eqz v2, :cond_2

    .line 193
    invoke-static {v0, v2, v5}, Lcom/android/settings/accessibility/AccessibilityUtils;->a(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 195
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AE:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AG:Landroid/view/View;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1

    .line 204
    :cond_3
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 205
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AG:Landroid/view/View;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private hR()V
    .locals 0

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->hQ()V

    .line 293
    return-void
.end method

.method private hS()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AK:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/PresetPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AM:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AN:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AP:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AQ:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AR:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AS:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AT:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AO:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AL:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AI:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 373
    return-void
.end method

.method private hT()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AK:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 426
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AV:Z

    if-eqz v3, :cond_2

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    iput-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AV:Z

    .line 433
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 425
    goto :goto_0

    .line 429
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AV:Z

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AU:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 431
    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AV:Z

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 118
    const v0, 0x7f040021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 122
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 126
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 127
    const v0, 0x7f100056

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 130
    return-object v1
.end method

.method public a(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .locals 3

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AM:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AN:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_2

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AM:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AN:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    .line 440
    const-string v2, "accessibility_captioning_foreground_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 459
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->hP()V

    .line 460
    return-void

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AQ:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AR:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_4

    .line 443
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AQ:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AR:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    .line 444
    const-string v2, "accessibility_captioning_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AS:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AT:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_6

    .line 447
    :cond_5
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AS:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AT:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    .line 448
    const-string v2, "accessibility_captioning_window_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 450
    :cond_6
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AP:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_7

    .line 451
    const-string v1, "accessibility_captioning_edge_color"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 452
    :cond_7
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AK:Lcom/android/settings/accessibility/PresetPreference;

    if-ne v1, p1, :cond_8

    .line 453
    const-string v1, "accessibility_captioning_preset"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 454
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->hT()V

    goto :goto_0

    .line 455
    :cond_8
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AO:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-ne v1, p1, :cond_1

    .line 456
    const-string v1, "accessibility_captioning_edge_type"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected hQ()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 253
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 254
    const v3, 0x7f090c1a

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 255
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_captioning_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 259
    new-instance v0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 269
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->P(Z)V

    .line 271
    return-void

    :cond_0
    move v0, v1

    .line 257
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->hP()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->hR()V

    .line 169
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AE:Landroid/view/accessibility/CaptioningManager;

    .line 106
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->hI()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->hJ()V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->hT()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->hS()V

    .line 111
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AL:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 466
    const-string v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 477
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->hP()V

    .line 478
    const/4 v0, 0x1

    return v0

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AJ:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_2

    .line 469
    const-string v1, "accessibility_captioning_font_scale"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 472
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AI:Lcom/android/settings/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    .line 473
    const-string v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AE:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    .line 138
    const v0, 0x7f100055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AF:Lcom/android/internal/widget/SubtitleView;

    .line 139
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AF:Lcom/android/internal/widget/SubtitleView;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 141
    const v0, 0x7f100054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AG:Landroid/view/View;

    .line 142
    const v0, 0x7f100053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AH:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->AH:Landroid/view/View;

    new-instance v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 150
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
