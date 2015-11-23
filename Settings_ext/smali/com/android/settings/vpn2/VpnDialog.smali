.class Lcom/android/settings/vpn2/VpnDialog;
.super Landroid/app/AlertDialog;
.source "VpnDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private anA:Z

.field private anB:Landroid/widget/TextView;

.field private anC:Landroid/widget/Spinner;

.field private anD:Landroid/widget/TextView;

.field private anE:Landroid/widget/TextView;

.field private anF:Landroid/widget/TextView;

.field private anG:Landroid/widget/TextView;

.field private anH:Landroid/widget/TextView;

.field private anI:Landroid/widget/TextView;

.field private anJ:Landroid/widget/CheckBox;

.field private anK:Landroid/widget/TextView;

.field private anL:Landroid/widget/TextView;

.field private anM:Landroid/widget/TextView;

.field private anN:Landroid/widget/Spinner;

.field private anO:Landroid/widget/Spinner;

.field private anP:Landroid/widget/Spinner;

.field private anQ:Landroid/widget/CheckBox;

.field private final anX:Landroid/content/DialogInterface$OnClickListener;

.field private final anz:Lcom/android/internal/net/VpnProfile;

.field private final cJ:Landroid/security/KeyStore;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->cJ:Landroid/security/KeyStore;

    .line 71
    iput-object p2, p0, Lcom/android/settings/vpn2/VpnDialog;->anX:Landroid/content/DialogInterface$OnClickListener;

    .line 72
    iput-object p3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    .line 73
    iput-boolean p4, p0, Lcom/android/settings/vpn2/VpnDialog;->anA:Z

    .line 74
    return-void
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 306
    if-nez p3, :cond_2

    const-string v0, ""

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 309
    if-eqz v4, :cond_0

    array-length v1, v4

    if-nez v1, :cond_3

    .line 310
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v5

    move-object v0, v1

    .line 318
    :goto_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v1, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 320
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 321
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v1, v2

    .line 323
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 324
    aget-object v2, v0, v1

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 325
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 329
    :cond_1
    return-void

    .line 306
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_3
    array-length v1, v4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 313
    aput-object v0, v1, v5

    .line 314
    array-length v0, v4

    invoke-static {v4, v5, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 315
    goto :goto_1

    .line 323
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private aP(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 253
    if-nez p1, :cond_2

    .line 254
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anE:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anF:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 254
    goto :goto_0

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anB:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anD:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anH:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/vpn2/VpnDialog;->h(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anI:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/vpn2/VpnDialog;->h(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 259
    goto :goto_0

    .line 261
    :cond_4
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anC:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 274
    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anM:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anN:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private cE(I)V
    .locals 7

    .prologue
    const v6, 0x7f1002dc

    const v5, 0x7f1002d5

    const v4, 0x7f1002d2

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anJ:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f1002de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anJ:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 241
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f1002de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private h(Ljava/lang/String;Z)Z
    .locals 10

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 279
    :try_start_0
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v2, v6, v5

    .line 280
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    :cond_0
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 285
    :cond_1
    if-eqz p2, :cond_4

    .line 286
    const-string v4, "/"

    const/4 v8, 0x2

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 287
    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 288
    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 290
    :goto_1
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 291
    const/4 v8, 0x3

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x2

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    .line 293
    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x4

    if-ne v4, v9, :cond_2

    if-ltz v2, :cond_2

    if-gt v2, v3, :cond_2

    if-ge v2, v3, :cond_0

    shl-int v2, v8, v2

    if-eqz v2, :cond_0

    .line 301
    :cond_2
    :goto_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 298
    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v4, v2

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 190
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnDialog;->anA:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnDialog;->aP(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 203
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f1002e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040125

    invoke-virtual {v0, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->setView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/VpnDialog;->setInverseBackgroundForced(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 85
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f100046

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anB:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f100148

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anC:Landroid/widget/Spinner;

    .line 87
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002cf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anD:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anE:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1001fa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anF:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002e3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anG:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002e4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anH:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002e5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anI:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002d0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anJ:Landroid/widget/CheckBox;

    .line 94
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002d4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anK:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002d8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anL:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002db

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anM:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002dd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anN:Landroid/widget/Spinner;

    .line 98
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002df

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anO:Landroid/widget/Spinner;

    .line 99
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002e0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anP:Landroid/widget/Spinner;

    .line 100
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v3, 0x7f1002e8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anQ:Landroid/widget/CheckBox;

    .line 103
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anB:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anC:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anD:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anE:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anF:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anG:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anH:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anI:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anJ:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anK:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anL:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anN:Landroid/widget/Spinner;

    const-string v3, "USRPKEY_"

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1, v5}, Lcom/android/settings/vpn2/VpnDialog;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anO:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    const v5, 0x7f0908a9

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/android/settings/vpn2/VpnDialog;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anP:Landroid/widget/Spinner;

    const-string v3, "USRCERT_"

    const v5, 0x7f0908aa

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/android/settings/vpn2/VpnDialog;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anQ:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anB:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anC:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anD:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anE:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anF:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anH:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anI:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anM:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anN:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 137
    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/VpnDialog;->aP(Z)Z

    move-result v3

    .line 138
    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anA:Z

    if-nez v0, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anA:Z

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anA:Z

    if-eqz v0, :cond_4

    .line 141
    const v0, 0x7f0908ae

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->setTitle(I)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v2, 0x7f1002ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->cE(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v2, 0x7f1002e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 151
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :goto_1
    const v0, 0x7f0908ac

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anX:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v0, v2}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 173
    :goto_2
    const/4 v0, -0x2

    const v2, 0x7f0908ab

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnDialog;->anX:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 177
    invoke-super {p0, v8}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0, v7}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anA:Z

    if-eqz v0, :cond_5

    move v0, v3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 186
    return-void

    :cond_2
    move v0, v1

    .line 138
    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 162
    :cond_4
    const v0, 0x7f0908af

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v2, 0x7f1002e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    const v0, 0x7f0908ad

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->anX:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v0, v2}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 180
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnDialog;->aP(Z)Z

    move-result v0

    goto :goto_3
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anC:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 210
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/VpnDialog;->cE(I)V

    .line 212
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnDialog;->anA:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnDialog;->aP(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method sP()Lcom/android/internal/net/VpnProfile;
    .locals 2

    .prologue
    .line 337
    new-instance v1, Lcom/android/internal/net/VpnProfile;

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anB:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anC:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 340
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anD:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anE:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anF:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anH:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anI:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 348
    iget v0, v1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_0

    .line 379
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anQ:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 380
    return-object v1

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anJ:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_0

    .line 354
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anK:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 357
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anL:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anM:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 362
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anK:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 365
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anN:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anN:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 370
    :cond_1
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anO:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anO:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anP:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anP:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method sR()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->anA:Z

    return v0
.end method
