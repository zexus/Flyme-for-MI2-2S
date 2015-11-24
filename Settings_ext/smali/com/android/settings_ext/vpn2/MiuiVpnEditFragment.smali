.class public Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;
.super Lcom/android/settings_ext/BaseEditFragment;
.source "MiuiVpnEditFragment.java"

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

.field private anz:Lcom/android/internal/net/VpnProfile;

.field private final cJ:Landroid/security/KeyStore;

.field private mArgs:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ext/BaseEditFragment;-><init>()V

    .line 46
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->cJ:Landroid/security/KeyStore;

    return-void
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 341
    if-nez p3, :cond_2

    const-string v0, ""

    .line 342
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 344
    if-eqz v4, :cond_0

    array-length v1, v4

    if-nez v1, :cond_3

    .line 345
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v5

    move-object v0, v1

    .line 353
    :goto_1
    invoke-virtual {p1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 355
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v1, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 357
    sget v3, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 358
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v1, v2

    .line 360
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 361
    aget-object v2, v0, v1

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 362
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 366
    :cond_1
    return-void

    .line 341
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_3
    array-length v1, v4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 348
    aput-object v0, v1, v5

    .line 349
    array-length v0, v4

    invoke-static {v4, v5, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 350
    goto :goto_1

    .line 360
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private aP(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 288
    if-nez p1, :cond_2

    .line 289
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anE:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anF:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 289
    goto :goto_0

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anB:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anD:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anH:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->h(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anI:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->h(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 294
    goto :goto_0

    .line 296
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anC:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 309
    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anM:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 307
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anN:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 296
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
    const v6, 0x7f1002d2

    const v5, 0x7f1002d5

    const v4, 0x7f1002d1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anJ:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 245
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    const v1, 0x7f1002dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    const v1, 0x7f1002de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 250
    const v1, 0x7f1002d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 251
    const v1, 0x7f1002d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 254
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 256
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anJ:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 260
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    const v1, 0x7f1002d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const v1, 0x7f1002d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    const v1, 0x7f1002d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    const v1, 0x7f1002d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 274
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :pswitch_4
    const v1, 0x7f1002dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :pswitch_5
    const v1, 0x7f1002de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 254
    nop

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

    .line 314
    :try_start_0
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v2, v6, v5

    .line 315
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    :cond_0
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 320
    :cond_1
    if-eqz p2, :cond_4

    .line 321
    const-string v4, "/"

    const/4 v8, 0x2

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 322
    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 323
    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 325
    :goto_1
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 326
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

    .line 328
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

    .line 336
    :cond_2
    :goto_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 333
    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v4, v2

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 90
    const v0, 0x7f040126

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anA:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->aP(Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->i(Z)V

    .line 213
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "profile_add"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 423
    if-eqz v0, :cond_0

    const v0, 0x7f0908b1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0908ae

    goto :goto_0
.end method

.method public h(Z)V
    .locals 4

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 429
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 430
    const-string v2, "profile"

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 431
    const-string v2, "profile_key"

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v0, "profile_delete"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 433
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->b(Landroid/os/Bundle;)V

    .line 434
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 225
    check-cast p1, Landroid/widget/CheckBox;

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    return-void

    .line 226
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseEditFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string v2, "profile_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    .line 80
    :cond_1
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    .line 84
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anA:Z

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v1, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anC:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 232
    invoke-direct {p0, p3}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->cE(I)V

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anA:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->aP(Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->i(Z)V

    .line 235
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/BaseEditFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string v3, "profile_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->finish()V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const v0, 0x7f100046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anB:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f100148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anC:Landroid/widget/Spinner;

    .line 106
    const v0, 0x7f1002cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anD:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f1002e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anE:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f1001fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anF:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f1002e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anG:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f1002e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anH:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f1002e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anI:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f1002d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anJ:Landroid/widget/CheckBox;

    .line 113
    const v0, 0x7f1002d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anK:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f1002d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anL:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f1002db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anM:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f1002dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anN:Landroid/widget/Spinner;

    .line 117
    const v0, 0x7f1002df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anO:Landroid/widget/Spinner;

    .line 118
    const v0, 0x7f1002e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anP:Landroid/widget/Spinner;

    .line 119
    const v0, 0x7f1002e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anQ:Landroid/widget/CheckBox;

    .line 122
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anB:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anC:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anD:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anE:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anF:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anG:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anH:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anI:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anJ:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anK:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anL:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anN:Landroid/widget/Spinner;

    const-string v3, "USRPKEY_"

    iget-object v4, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anO:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    const v4, 0x7f0908a9

    iget-object v5, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anP:Landroid/widget/Spinner;

    const-string v3, "USRCERT_"

    const v4, 0x7f0908aa

    iget-object v5, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anQ:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anB:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anC:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anC:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anC:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anD:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anE:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anF:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anH:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anI:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anM:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anN:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anN:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anN:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anO:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anO:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anP:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anP:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 160
    invoke-direct {p0, v2}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->aP(Z)Z

    move-result v0

    .line 161
    iget-boolean v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anA:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_6

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anA:Z

    .line 163
    iget-boolean v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anA:Z

    if-eqz v0, :cond_5

    .line 166
    const v0, 0x7f1002ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->cE(I)V

    .line 171
    const v0, 0x7f1002e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 176
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 180
    :cond_5
    const v0, 0x7f100219

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 181
    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string v4, "profile_add"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 182
    if-nez v2, :cond_0

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    new-instance v1, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment$1;-><init>(Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 161
    goto :goto_1
.end method

.method sP()Lcom/android/internal/net/VpnProfile;
    .locals 2

    .prologue
    .line 374
    new-instance v1, Lcom/android/internal/net/VpnProfile;

    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anz:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anB:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anC:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 377
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anD:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anE:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anF:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anH:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anI:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 385
    iget v0, v1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_0

    .line 416
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anQ:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 417
    return-object v1

    .line 387
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anJ:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anK:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 394
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anL:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anM:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 399
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anK:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 402
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anN:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anN:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 407
    :cond_1
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anO:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anO:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anP:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;->anP:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    .line 385
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
