.class public Lcom/android/settings/deviceinfo/MsdInstallActivity;
.super Lmiui/app/Activity;
.source "MsdInstallActivity.java"


# static fields
.field private static final Sp:Ljava/io/File;

.field private static final Ss:[[I

.field private static final St:[I

.field private static final Su:[I

.field private static final Sv:[I


# instance fields
.field private SA:Landroid/widget/ImageView;

.field private SB:Landroid/widget/TextView;

.field private SC:Landroid/widget/ImageView;

.field private SD:Landroid/widget/CheckBox;

.field private SE:Landroid/widget/LinearLayout;

.field private SF:Landroid/widget/TextView;

.field private SG:Landroid/widget/ImageView;

.field private Sq:I

.field private Sr:I

.field private Sw:[Ljava/lang/String;

.field private Sx:[I

.field private Sy:Landroid/widget/TextView;

.field private Sz:Landroid/widget/TextView;

.field private df:Landroid/widget/Button;

.field private dg:Landroid/widget/Button;

.field private mHeaderView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "cdrom_install.iso"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sp:Ljava/io/File;

    .line 47
    new-array v0, v4, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Ss:[[I

    .line 68
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->St:[I

    .line 75
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Su:[I

    .line 83
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sv:[I

    return-void

    .line 47
    :array_0
    .array-data 4
        0x7f0201ca
        0x7f0201d0
        0x7f0201cd
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x7f0201cc
    .end array-data

    :array_2
    .array-data 4
        0x7f0201c9
        0x0
        0x7f0201cb
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 68
    :array_4
    .array-data 4
        0x7f0b0097
        0x7f0b0098
        0x7f0b0099
        0x7f0b009a
    .end array-data

    .line 75
    :array_5
    .array-data 4
        0x7f0201c8
        0x0
        0x7f0201c7
        0x0
    .end array-data

    .line 83
    :array_6
    .array-data 4
        0x7f090c0c
        0x0
        0x7f090c0e
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 267
    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/MsdInstallActivity;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/MsdInstallActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SD:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/MsdInstallActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->dg:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/MsdInstallActivity;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    return v0
.end method

.method static synthetic d(Lcom/android/settings/deviceinfo/MsdInstallActivity;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    return v0
.end method

.method static synthetic e(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->oc()V

    return-void
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "install_system"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    .line 115
    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    if-eq v0, v11, :cond_0

    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    if-ne v0, v13, :cond_1

    .line 116
    :cond_0
    iput v12, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    .line 118
    :cond_1
    const v0, 0x7f100135

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f100141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SF:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f100142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SG:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sy:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f100140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SA:Landroid/widget/ImageView;

    .line 123
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f10013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SB:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f10013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SC:Landroid/widget/ImageView;

    .line 125
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v1, 0x7f10013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sz:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f100136

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SD:Landroid/widget/CheckBox;

    .line 128
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SD:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    if-nez v0, :cond_3

    const v0, 0x7f090c0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SD:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings/deviceinfo/MsdInstallActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$1;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->df:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->df:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/deviceinfo/MsdInstallActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$2;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v0, 0x7f10013a

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->dg:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->dg:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 159
    const v0, 0x7f100137

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SE:Landroid/widget/LinearLayout;

    .line 160
    const v0, 0x7f100138

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    sget-object v1, Lcom/android/settings/deviceinfo/MsdInstallActivity;->St:[I

    iget v2, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    aget v1, v1, v2

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 162
    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    if-ne v1, v13, :cond_4

    const v1, 0x7f040089

    move v3, v1

    .line 163
    :goto_1
    array-length v8, v7

    move v4, v5

    :goto_2
    if-ge v4, v8, :cond_5

    aget-object v9, v7, v4

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 165
    const v2, 0x7f10013b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 166
    iget v10, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    if-ne v10, v13, :cond_2

    sget-boolean v10, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v10, :cond_2

    .line 167
    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    :cond_2
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SE:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 128
    :cond_3
    const v0, 0x7f090bfd

    goto/16 :goto_0

    .line 162
    :cond_4
    const v1, 0x7f040087

    move v3, v1

    goto :goto_1

    .line 172
    :cond_5
    new-array v0, v13, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sw:[Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sw:[Ljava/lang/String;

    const v1, 0x7f0b0094

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    aget-object v1, v1, v2

    aput-object v1, v0, v5

    .line 175
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sw:[Ljava/lang/String;

    const v1, 0x7f0b0095

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    aget-object v1, v1, v2

    aput-object v1, v0, v11

    .line 177
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sw:[Ljava/lang/String;

    const v1, 0x7f0b0096

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    aget-object v1, v1, v2

    aput-object v1, v0, v12

    .line 179
    sget-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Ss:[[I

    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sx:[I

    .line 182
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 183
    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    if-ne v1, v11, :cond_7

    .line 184
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sw:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sw:[Ljava/lang/String;

    aget-object v2, v2, v12

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 186
    :cond_7
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SF:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->oc()V

    .line 188
    return-void
.end method

.method private oc()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x2

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 191
    sget-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :cond_0
    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    packed-switch v0, :pswitch_data_0

    .line 231
    :cond_1
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    .line 232
    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    if-nez v0, :cond_a

    .line 233
    sget-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sv:[I

    iget v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 235
    const-string v5, "http://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 236
    if-ltz v5, :cond_2

    .line 237
    new-instance v6, Lcom/android/settings/deviceinfo/MsdInstallActivity$HtmlLinkSpan;

    invoke-direct {v6, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$HtmlLinkSpan;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v7, 0x21

    invoke-virtual {v4, v6, v5, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sz:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sz:Landroid/widget/TextView;

    sget-object v4, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Su:[I

    iget v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    aget v4, v4, v5

    invoke-virtual {v0, v4, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    :goto_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sy:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sw:[Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SA:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sx:[I

    iget v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SE:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    if-ne v0, v8, :cond_b

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    if-ne v0, v8, :cond_c

    const v0, 0x7f090c00

    .line 252
    :goto_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->df:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 254
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->dg:Landroid/widget/Button;

    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    if-ne v0, v8, :cond_d

    move v0, v2

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->dg:Landroid/widget/Button;

    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    if-eq v0, v8, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SD:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_4
    move v0, v3

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SD:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    if-nez v0, :cond_f

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SG:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SF:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    if-eq v0, v8, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sq:I

    if-ne v0, v3, :cond_7

    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    if-ne v0, v8, :cond_7

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SG:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SF:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :cond_7
    return-void

    .line 194
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SB:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_7
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SC:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_8
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sr:I

    if-ne v0, v8, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SG:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 201
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SG:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SF:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 206
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SF:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 194
    goto :goto_7

    :cond_9
    move v0, v2

    .line 195
    goto :goto_8

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 218
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SG:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 222
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SG:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SF:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 227
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->SF:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 244
    :cond_a
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->Sz:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 249
    goto/16 :goto_2

    .line 251
    :cond_c
    const/high16 v0, 0x1040000

    goto/16 :goto_3

    :cond_d
    move v0, v1

    .line 254
    goto/16 :goto_4

    :cond_e
    move v0, v1

    .line 255
    goto/16 :goto_5

    :cond_f
    move v0, v2

    .line 257
    goto/16 :goto_6

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f040086

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->setContentView(I)V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->init()V

    .line 111
    return-void
.end method
