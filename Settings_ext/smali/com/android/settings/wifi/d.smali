.class public Lcom/android/settings/wifi/d;
.super Lcom/android/settings/wifi/AccessPoint;
.source "MiuiAccessPoint.java"


# static fields
.field private static asN:Ljava/util/Comparator;


# instance fields
.field private asD:Landroid/view/View$OnClickListener;

.field private asE:Z

.field private asF:Z

.field private asG:Landroid/view/View$OnClickListener;

.field private asH:Z

.field private asI:Z

.field private asJ:Z

.field private asK:I

.field private asL:I

.field public asM:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mContext:Landroid/content/Context;

.field private sE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/android/settings/wifi/g;

    invoke-direct {v0}, Lcom/android/settings/wifi/g;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/d;->asN:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/wifi/d;->asE:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/wifi/d;->asF:Z

    .line 175
    new-instance v0, Lcom/android/settings/wifi/e;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/e;-><init>(Lcom/android/settings/wifi/d;)V

    iput-object v0, p0, Lcom/android/settings/wifi/d;->asM:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/d;->init(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/wifi/d;->asE:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/wifi/d;->asF:Z

    .line 175
    new-instance v0, Lcom/android/settings/wifi/e;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/e;-><init>(Lcom/android/settings/wifi/d;)V

    iput-object v0, p0, Lcom/android/settings/wifi/d;->asM:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/d;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/wifi/d;->asE:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/wifi/d;->asF:Z

    .line 175
    new-instance v0, Lcom/android/settings/wifi/e;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/e;-><init>(Lcom/android/settings/wifi/d;)V

    iput-object v0, p0, Lcom/android/settings/wifi/d;->asM:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/d;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/d;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 101
    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 83
    iput-object p1, p0, Lcom/android/settings/wifi/d;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/d;->sE:Z

    .line 88
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 91
    sget v3, Lmiui/R$attr;->textColorChecked:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 92
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/d;->asK:I

    .line 94
    sget v3, Lmiui/R$attr;->preferencePrimaryTextColor:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 95
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/d;->asL:I

    .line 97
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static uc()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/android/settings/wifi/d;->asN:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bg(Z)V
    .locals 0

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/android/settings/wifi/d;->asI:Z

    .line 215
    return-void
.end method

.method public bh(Z)V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/settings/wifi/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->M(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 235
    const/4 p1, 0x0

    .line 237
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/wifi/d;->asJ:Z

    .line 238
    return-void
.end method

.method public bi(Z)V
    .locals 0

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/android/settings/wifi/d;->asH:Z

    .line 246
    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/settings/wifi/d;->asD:Landroid/view/View$OnClickListener;

    .line 227
    return-void
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2

    .prologue
    .line 262
    instance-of v0, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_1

    .line 263
    const/4 v0, -0x1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/d;->ssid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 268
    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/d;->ssid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/d;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings/wifi/d;->asG:Landroid/view/View$OnClickListener;

    .line 231
    return-void
.end method

.method public isConnectedOrConnecting()Z
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/d;->asi:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/d;->asi:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/d;->asi:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(Landroid/preference/Preference;)I
    .locals 1

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10

    .prologue
    const v9, 0x1020001

    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->onBindView(Landroid/view/View;)V

    .line 107
    const v0, 0x7f1001d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 108
    sget v1, Lmiui/R$drawable;->btn_inline_detail_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-boolean v1, p0, Lcom/android/settings/wifi/d;->asE:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 110
    iget-boolean v1, p0, Lcom/android/settings/wifi/d;->asE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/d;->asD:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-boolean v1, p0, Lcom/android/settings/wifi/d;->asF:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    const v0, 0x7f1001d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 114
    const v0, 0x7f1001d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 115
    const v1, 0x7f1001d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    iget-boolean v7, p0, Lcom/android/settings/wifi/d;->asH:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/wifi/d;->asi:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/d;->asi:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 117
    :cond_0
    const v7, 0x7f020295

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    iget-object v7, p0, Lcom/android/settings/wifi/d;->asG:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget v1, p0, Lcom/android/settings/wifi/d;->asf:I

    const v6, 0x7fffffff

    if-ne v1, v6, :cond_4

    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :goto_2
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 137
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/wifi/d;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 140
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    iget v1, p0, Lcom/android/settings/wifi/d;->asK:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 147
    :goto_3
    iget-boolean v1, p0, Lcom/android/settings/wifi/d;->asJ:Z

    if-eqz v1, :cond_7

    .line 148
    const v1, 0x7f02008f

    .line 152
    :goto_4
    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 154
    iget-boolean v0, p0, Lcom/android/settings/wifi/d;->sE:Z

    if-eqz v0, :cond_9

    .line 155
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/wifi/d;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wifi/d;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 162
    :goto_6
    const v0, 0x7f1001d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/wifi/d;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/wifi/d;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 166
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/wifi/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/d;->asi:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/d;->ub()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    iget-object v1, p0, Lcom/android/settings/wifi/d;->mContext:Landroid/content/Context;

    const v2, 0x7f090c97

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/d;->asM:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/d;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    .line 110
    goto/16 :goto_0

    :cond_3
    move v1, v4

    .line 111
    goto/16 :goto_1

    .line 123
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/d;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 124
    const v1, 0x7f02029d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 127
    :cond_5
    invoke-virtual {v6, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 143
    :cond_6
    iget v1, p0, Lcom/android/settings/wifi/d;->asL:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 149
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/d;->ase:Landroid/net/wifi/ScanResult;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/d;->ase:Landroid/net/wifi/ScanResult;

    iget-boolean v1, v1, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    if-eqz v1, :cond_a

    .line 150
    const v1, 0x7f0202b0

    goto/16 :goto_4

    :cond_8
    move v3, v5

    .line 156
    goto/16 :goto_5

    .line 159
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/R$dimen;->preference_custom_widget_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_6

    :cond_a
    move v1, v3

    goto/16 :goto_4
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/android/settings/wifi/d;->asF:Z

    .line 223
    return-void
.end method

.method public tZ()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/settings/wifi/d;->asH:Z

    return v0
.end method

.method public ua()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings/wifi/d;->ase:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/d;->ase:Landroid/net/wifi/ScanResult;

    iget-boolean v0, v0, Landroid/net/wifi/ScanResult;->isXiaomiRouter:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ub()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 277
    iget-object v1, p0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-object v0

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    const-string v0, "WPA"

    goto :goto_0

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 289
    const-string v0, "WEP"

    goto :goto_0
.end method

.method public ud()Z
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/settings/wifi/d;->arZ:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/wifi/d;->ase:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/d;->ase:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
