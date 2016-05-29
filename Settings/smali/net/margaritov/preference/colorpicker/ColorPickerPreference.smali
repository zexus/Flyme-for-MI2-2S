.class public Lnet/margaritov/preference/colorpicker/ColorPickerPreference;
.super Landroid/preference/Preference;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAlphaSliderEnabled:Z

.field private mDensity:F

.field mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mValue:I

.field mView:Landroid/view/View;

.field widgetFrameView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 61
    invoke-direct {p0, p1, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 66
    invoke-direct {p0, p1, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 7
    .param p0, "color"    # I

    .prologue
    const/4 v6, 0x1

    .line 207
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "alpha":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "red":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "green":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "blue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 11
    .param p0, "argb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/16 v6, 0x10

    .line 240
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    const-string v4, "#"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 244
    :cond_0
    const/4 v0, -0x1

    .local v0, "alpha":I
    const/4 v3, -0x1

    .local v3, "red":I
    const/4 v2, -0x1

    .local v2, "green":I
    const/4 v1, -0x1

    .line 246
    .local v1, "blue":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 247
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 248
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 249
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 250
    const/16 v4, 0x8

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 259
    :cond_1
    :goto_0
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4

    .line 252
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 253
    const/16 v0, 0xff

    .line 254
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 255
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 256
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 127
    iget v8, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/high16 v9, 0x41f80000    # 31.0f

    mul-float/2addr v8, v9

    float-to-int v3, v8

    .line 128
    .local v3, "d":I
    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 129
    .local v2, "color":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 131
    .local v7, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 132
    .local v4, "h":I
    move v1, v2

    .line 133
    .local v1, "c":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_4

    .line 134
    move v6, v5

    .local v6, "j":I
    :goto_1
    if-ge v6, v4, :cond_3

    .line 135
    if-le v5, v10, :cond_0

    if-le v6, v10, :cond_0

    add-int/lit8 v8, v7, -0x2

    if-ge v5, v8, :cond_0

    add-int/lit8 v8, v4, -0x2

    if-lt v6, v8, :cond_2

    :cond_0
    const v1, -0x777778

    .line 136
    :goto_2
    invoke-virtual {v0, v5, v6, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 137
    if-eq v5, v6, :cond_1

    .line 138
    invoke-virtual {v0, v6, v5, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 134
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 135
    goto :goto_2

    .line 133
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    .end local v6    # "j":I
    :cond_4
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    .line 81
    invoke-virtual {p0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 82
    if-eqz p2, :cond_0

    .line 83
    const/4 v0, 0x0

    const-string v1, "alphaSlider"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 85
    :cond_0
    return-void
.end method

.method private setPreviewColor()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 99
    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v1, "iView":Landroid/widget/ImageView;
    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    const v4, 0x1020018

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 105
    .local v2, "widgetFrameView":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 116
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 117
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 118
    invoke-virtual {v2, v7, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 120
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 122
    new-instance v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    const/high16 v4, 0x40a00000    # 5.0f

    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    .line 90
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 92
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->widgetFrameView:Landroid/widget/LinearLayout;

    .line 95
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    .line 96
    return-void
.end method

.method public onColorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->persistInt(I)Z

    .line 151
    :cond_0
    iput p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 152
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :goto_1
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 71
    const/high16 v0, -0x1000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 276
    if-eqz p1, :cond_0

    instance-of v1, p1, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    if-nez v1, :cond_1

    .line 278
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 285
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 282
    check-cast v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    .line 283
    .local v0, "myState":Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 284
    iget-object v1, v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 264
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 265
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 271
    :goto_0
    return-object v0

    .line 269
    :cond_1
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    invoke-direct {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 270
    .local v0, "myState":Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-virtual {p0, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->onColorChanged(I)V

    .line 77
    return-void

    .line 76
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setNewPreviewColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->onColorChanged(I)V

    .line 198
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 169
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-direct {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 170
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 171
    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    .line 174
    :cond_0
    if-eqz p1, :cond_1

    .line 175
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    .line 178
    return-void
.end method
