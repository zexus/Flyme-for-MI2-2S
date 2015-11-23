.class public Lcom/android/settings_ext/wifi/T;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private asH:Z

.field private final asR:Lcom/android/settings_ext/wifi/AccessPoint;

.field protected auA:Landroid/widget/Spinner;

.field protected auB:Landroid/widget/TextView;

.field protected auC:Landroid/widget/TextView;

.field private auD:Landroid/widget/ArrayAdapter;

.field auE:Lcom/android/settings_ext/wifi/C;

.field protected auF:Landroid/widget/Spinner;

.field protected auG:Landroid/widget/TextView;

.field protected auH:Landroid/widget/TextView;

.field protected auI:Landroid/widget/TextView;

.field protected auJ:Landroid/widget/TextView;

.field protected auK:Landroid/widget/TextView;

.field protected auL:Landroid/widget/Spinner;

.field protected auM:Landroid/widget/TextView;

.field protected auN:Landroid/widget/TextView;

.field protected auO:Landroid/widget/TextView;

.field protected auP:Landroid/widget/TextView;

.field protected auQ:Landroid/net/IpConfiguration$IpAssignment;

.field protected auR:Landroid/net/IpConfiguration$ProxySettings;

.field protected auS:Landroid/net/ProxyInfo;

.field protected auT:Landroid/net/StaticIpConfiguration;

.field protected auU:Landroid/widget/Spinner;

.field protected auV:Landroid/widget/Spinner;

.field protected auW:Landroid/widget/Spinner;

.field protected auX:Landroid/widget/Spinner;

.field protected auY:Ljava/util/ArrayList;

.field protected auZ:Ljava/lang/String;

.field private final aun:Lcom/android/settings_ext/wifi/V;

.field private auo:Z

.field protected aup:Landroid/widget/TextView;

.field protected auq:I

.field protected aur:Landroid/widget/TextView;

.field protected aus:Ljava/lang/String;

.field private final aut:Landroid/widget/ArrayAdapter;

.field private final auu:Landroid/widget/ArrayAdapter;

.field protected auv:Landroid/widget/Spinner;

.field protected auw:Landroid/widget/Spinner;

.field protected aux:Landroid/widget/Spinner;

.field protected auy:Landroid/widget/Spinner;

.field protected auz:Landroid/widget/Spinner;

.field protected ava:Ljava/lang/String;

.field protected avb:Ljava/lang/String;

.field protected avc:Ljava/lang/String;

.field protected avd:Landroid/widget/TextView;

.field private ave:Z

.field private avf:I

.field private final avg:Z

.field private avh:[Ljava/lang/String;

.field private final avi:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/settings_ext/wifi/AccessPoint;)V
    .locals 5

    .prologue
    const v4, 0x1090008

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aus:Ljava/lang/String;

    .line 209
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auQ:Landroid/net/IpConfiguration$IpAssignment;

    .line 210
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auR:Landroid/net/IpConfiguration$ProxySettings;

    .line 211
    iput-object v1, p0, Lcom/android/settings_ext/wifi/T;->auS:Landroid/net/ProxyInfo;

    .line 212
    iput-object v1, p0, Lcom/android/settings_ext/wifi/T;->auT:Landroid/net/StaticIpConfiguration;

    .line 241
    iput-boolean v2, p0, Lcom/android/settings_ext/wifi/T;->ave:Z

    .line 242
    iput v2, p0, Lcom/android/settings_ext/wifi/T;->avf:I

    .line 253
    iput-object p1, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    .line 254
    iput-object p2, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 255
    iput-object v1, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    .line 256
    iput-boolean v2, p0, Lcom/android/settings_ext/wifi/T;->avg:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/T;->auo:Z

    .line 258
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->avi:Landroid/os/Handler;

    .line 260
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    .line 261
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    const v1, 0x7f0902e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aus:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    .line 263
    const-string v0, "support_wapi"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 268
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    .line 270
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    .line 273
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 274
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    .line 276
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auU:Landroid/widget/Spinner;

    .line 279
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auU:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auU:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    .line 281
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auy:Landroid/widget/Spinner;

    .line 283
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auy:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auy:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auA:Landroid/widget/Spinner;

    .line 285
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auA:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auA:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auB:Landroid/widget/TextView;

    .line 287
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auC:Landroid/widget/TextView;

    .line 289
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aut:Landroid/widget/ArrayAdapter;

    .line 292
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aut:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 294
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auu:Landroid/widget/ArrayAdapter;

    .line 297
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auu:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 298
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ext/wifi/V;Landroid/view/View;Lcom/android/settings_ext/wifi/AccessPoint;Z)V
    .locals 8

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aus:Ljava/lang/String;

    .line 209
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auQ:Landroid/net/IpConfiguration$IpAssignment;

    .line 210
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auR:Landroid/net/IpConfiguration$ProxySettings;

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auS:Landroid/net/ProxyInfo;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auT:Landroid/net/StaticIpConfiguration;

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/T;->ave:Z

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/wifi/T;->avf:I

    .line 302
    iput-object p1, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    .line 303
    instance-of v0, p1, Lcom/android/settings_ext/wifi/W;

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/T;->avg:Z

    .line 305
    iput-object p2, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    .line 306
    iput-object p3, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 307
    if-nez p3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    .line 309
    iput-boolean p4, p0, Lcom/android/settings_ext/wifi/T;->auo:Z

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->avi:Landroid/os/Handler;

    .line 312
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    invoke-interface {v0}, Lcom/android/settings_ext/wifi/V;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 314
    iput-object v2, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    .line 315
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 317
    const v0, 0x7f0b001a

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->avh:[Ljava/lang/String;

    .line 318
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aut:Landroid/widget/ArrayAdapter;

    .line 323
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aut:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 325
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auu:Landroid/widget/ArrayAdapter;

    .line 330
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auu:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 332
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    const v1, 0x7f0902e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aus:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    .line 334
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    .line 336
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-nez v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    const v1, 0x7f0902b3

    invoke-interface {v0, v1}, Lcom/android/settings_ext/wifi/V;->setTitle(I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aup:Landroid/widget/TextView;

    .line 346
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aup:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    .line 349
    const-string v0, "support_wapi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 355
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/T;->avg:Z

    if-eqz v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100306

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f040139

    const v4, 0x1020014

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v1, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 363
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 368
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->uW()V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->uX()V

    .line 370
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    const v1, 0x7f090307

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ext/wifi/V;->f(Ljava/lang/CharSequence;)V

    .line 484
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    const v1, 0x7f090309

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ext/wifi/V;->h(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    invoke-interface {v0}, Lcom/android/settings_ext/wifi/V;->va()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->uf()V

    .line 493
    :cond_1
    return-void

    .line 307
    :cond_2
    iget v0, p3, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    goto/16 :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 377
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/settings_ext/wifi/V;->setTitle(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 382
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_6

    .line 383
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 384
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v4, v5, :cond_e

    .line 385
    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 388
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    .line 389
    if-eqz v4, :cond_5

    iget-object v5, v4, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v5, :cond_5

    .line 390
    const v5, 0x7f0902da

    iget-object v4, v4, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v5, v4}, Lcom/android/settings_ext/wifi/T;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 408
    :cond_5
    :goto_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v5, :cond_f

    .line 409
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 419
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_7

    iget-boolean v1, p0, Lcom/android/settings_ext/wifi/T;->auo:Z

    if-eqz v1, :cond_8

    .line 420
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->tX()V

    .line 421
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->uW()V

    .line 422
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->uX()V

    .line 423
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v4, 0x7f100204

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v4, 0x7f100205

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 433
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->tP()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 434
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uL()Ljava/lang/String;

    move-result-object v4

    .line 435
    iget-boolean v5, p0, Lcom/android/settings_ext/wifi/T;->auo:Z

    if-eqz v5, :cond_11

    .line 436
    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    const v6, 0x7f090307

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/settings_ext/wifi/V;->f(Ljava/lang/CharSequence;)V

    .line 448
    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    .line 449
    const v5, 0x7f0902d7

    iget-object v6, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    invoke-interface {v6}, Lcom/android/settings_ext/wifi/V;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/settings_ext/wifi/J;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v5, v1}, Lcom/android/settings_ext/wifi/T;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 453
    :cond_a
    if-eqz v4, :cond_b

    .line 454
    const v1, 0x7f0902d6

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings_ext/wifi/T;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 457
    :cond_b
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->tO()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    .line 459
    const v4, 0x7f0902d8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Mbps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings_ext/wifi/T;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 463
    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    .line 464
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    .line 465
    const/4 v1, 0x0

    .line 467
    const/16 v5, 0x960

    if-lt v4, v5, :cond_13

    const/16 v5, 0x9c4

    if-ge v4, v5, :cond_13

    .line 469
    const v1, 0x7f090283

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    :goto_6
    if-eqz v1, :cond_d

    .line 477
    const v3, 0x7f0902d9

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings_ext/wifi/T;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 481
    :cond_d
    const v1, 0x7f0902d5

    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings_ext/wifi/AccessPoint;->bd(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings_ext/wifi/T;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 394
    :cond_e
    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 395
    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ext/wifi/AccessPoint;->tO()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 396
    if-eqz v4, :cond_5

    .line 397
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    .line 398
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    and-int/lit16 v6, v4, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v7, v4, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v7, v4, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 403
    const v4, 0x7f0902da

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings_ext/wifi/T;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 411
    :cond_f
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v4, :cond_10

    .line 412
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 415
    :cond_10
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 438
    :cond_11
    if-nez v1, :cond_12

    if-eqz v4, :cond_12

    .line 439
    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    const v6, 0x7f090303

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/settings_ext/wifi/V;->f(Ljava/lang/CharSequence;)V

    .line 443
    :goto_7
    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-nez v5, :cond_9

    .line 445
    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    const v6, 0x7f090305

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/settings_ext/wifi/V;->g(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 441
    :cond_12
    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v6, 0x7f10020f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 470
    :cond_13
    const/16 v5, 0x1324

    if-lt v4, v5, :cond_14

    const/16 v5, 0x170c

    if-ge v4, v5, :cond_14

    .line 472
    const v1, 0x7f090284

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 474
    :cond_14
    const-string v3, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected frequency "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    invoke-interface {v0}, Lcom/android/settings_ext/wifi/V;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040131

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 499
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 500
    if-nez v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 505
    const v0, 0x1020010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1449
    invoke-virtual {p1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1451
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const/16 v2, 0x3f2

    invoke-virtual {v0, p2, v2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1452
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    .line 1453
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->aus:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1461
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1462
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1464
    sget v0, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1465
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1466
    return-void

    .line 1455
    :cond_1
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1456
    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->aus:Ljava/lang/String;

    aput-object v3, v0, v4

    .line 1457
    array-length v3, v2

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private a(Lcom/android/settings_ext/wifi/AccessPoint;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1255
    if-eqz p1, :cond_0

    const-string v0, "SG"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v2, "Singtel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    move v0, v1

    .line 1256
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1257
    const-string v2, "SIM"

    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1258
    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1259
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1264
    :cond_0
    return-void

    .line 1256
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1469
    if-eqz p2, :cond_0

    .line 1471
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1472
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1473
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1474
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1479
    :cond_0
    return-void

    .line 1472
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private bN(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 796
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_0
    return-object v0

    .line 797
    :catch_0
    move-exception v0

    .line 798
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 797
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private db(I)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 565
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v0, :cond_1

    const-string v0, "CMCC"

    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 566
    :goto_0
    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 567
    const/4 p1, 0x4

    .line 569
    :cond_0
    return p1

    .line 565
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dc(I)V
    .locals 6

    .prologue
    const v5, 0x7f1001f3

    const v4, 0x7f1001eb

    const/4 v3, 0x0

    .line 1160
    invoke-direct {p0, p1}, Lcom/android/settings_ext/wifi/T;->db(I)I

    move-result v0

    .line 1162
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f1001e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f1001f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f1001ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uS()V

    .line 1171
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f1001fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1175
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uV()V

    .line 1180
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1181
    packed-switch v0, :pswitch_data_0

    .line 1240
    :cond_1
    :goto_0
    return-void

    .line 1183
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uN()V

    .line 1184
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uO()V

    .line 1185
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uQ()V

    .line 1186
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uP()V

    goto :goto_0

    .line 1189
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uN()V

    .line 1191
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uQ()V

    .line 1194
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uR()V

    goto :goto_0

    .line 1198
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auD:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->aut:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_2

    .line 1199
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aut:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auD:Landroid/widget/ArrayAdapter;

    .line 1200
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auD:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1202
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1204
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uP()V

    goto :goto_0

    .line 1208
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auD:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auu:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_3

    .line 1209
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auu:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auD:Landroid/widget/ArrayAdapter;

    .line 1210
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auD:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1212
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uP()V

    goto :goto_0

    .line 1219
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uN()V

    .line 1220
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uO()V

    .line 1221
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uQ()V

    .line 1222
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uP()V

    .line 1223
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uT()V

    .line 1224
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uR()V

    .line 1226
    const-string v0, "SG"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auE:Lcom/android/settings_ext/wifi/C;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/C;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 1227
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uU()V

    goto/16 :goto_0

    .line 1231
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uN()V

    .line 1232
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uO()V

    .line 1233
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uQ()V

    .line 1234
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uP()V

    .line 1235
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uT()V

    .line 1236
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uR()V

    goto/16 :goto_0

    .line 1181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private dd(I)V
    .locals 3

    .prologue
    .line 1615
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auY:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 1616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/wifi/T;->auZ:Ljava/lang/String;

    .line 1617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/wifi/T;->avb:Ljava/lang/String;

    .line 1618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/as.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/wifi/T;->ava:Ljava/lang/String;

    .line 1619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/as.cer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->avc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    :goto_0
    return-void

    .line 1620
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private t(II)V
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1441
    if-eqz v0, :cond_0

    .line 1442
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1444
    :cond_0
    return-void
.end method

.method private uL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 513
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->avh:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->avh:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 517
    :cond_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->avh:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->avh:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uN()V
    .locals 2

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1269
    return-void
.end method

.method private uO()V
    .locals 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1273
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auy:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1274
    return-void
.end method

.method private uP()V
    .locals 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1278
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auA:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1279
    return-void
.end method

.method private uQ()V
    .locals 2

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1283
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auC:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    return-void
.end method

.method private uR()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1287
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1289
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    return-void
.end method

.method private uS()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1293
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1296
    return-void
.end method

.method private uT()V
    .locals 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auB:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    return-void
.end method

.method private uU()V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100308

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1313
    return-void
.end method

.method private uV()V
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100308

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    return-void
.end method

.method private uY()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1489
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    .line 1491
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ext/wifi/T;->auY:Ljava/util/ArrayList;

    .line 1494
    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/T;->ave:Z

    .line 1495
    iput v0, p0, Lcom/android/settings_ext/wifi/T;->avf:I

    .line 1498
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/wapi_certificate"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1500
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1525
    :goto_0
    return-void

    .line 1504
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1505
    array-length v4, v3

    iput v4, p0, Lcom/android/settings_ext/wifi/T;->avf:I

    .line 1506
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1507
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1508
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/as.cer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1509
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v0

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/user.cer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1511
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->auY:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1516
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/T;->ave:Z

    .line 1517
    new-instance v3, Landroid/widget/ArrayAdapter;

    sget v4, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v3, v1, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1520
    const v0, 0x1090009

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1521
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auV:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1523
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(Landroid/net/StaticIpConfiguration;)I
    .locals 7

    .prologue
    const v2, 0x7f09031c

    const v0, 0x7f09031a

    const/4 v1, 0x0

    .line 805
    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->auG:Landroid/widget/TextView;

    if-nez v3, :cond_1

    move v0, v1

    .line 877
    :cond_0
    :goto_0
    return v0

    .line 807
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->auG:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 810
    invoke-direct {p0, v3}, Lcom/android/settings_ext/wifi/T;->bN(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v3

    .line 811
    if-eqz v3, :cond_0

    .line 815
    const/4 v0, -0x1

    .line 817
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->auI:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 818
    if-ltz v0, :cond_2

    const/16 v4, 0x20

    if-le v0, v4, :cond_3

    .line 819
    :cond_2
    const v0, 0x7f09031d

    goto :goto_0

    .line 821
    :cond_3
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v3, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->auH:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 831
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 834
    :try_start_1
    invoke-static {v3, v0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 836
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    aput-byte v4, v0, v3

    .line 837
    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->auH:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 849
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auJ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 857
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auJ:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    const v4, 0x7f09031f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auJ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 862
    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/T;->bN(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 863
    if-nez v0, :cond_7

    move v0, v2

    .line 864
    goto/16 :goto_0

    .line 822
    :catch_0
    move-exception v4

    .line 826
    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->auI:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    const v6, 0x7f090325

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 842
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings_ext/wifi/T;->bN(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 843
    if-nez v0, :cond_6

    .line 844
    const v0, 0x7f09031b

    goto/16 :goto_0

    .line 846
    :cond_6
    iput-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 866
    :cond_7
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auK:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 870
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auK:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/T;->bN(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 872
    if-nez v0, :cond_9

    move v0, v2

    .line 873
    goto/16 :goto_0

    .line 875
    :cond_9
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v0, v1

    .line 877
    goto/16 :goto_0

    .line 839
    :catch_1
    move-exception v0

    goto :goto_2

    .line 838
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->avi:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ext/wifi/U;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/U;-><init>(Lcom/android/settings_ext/wifi/T;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1539
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1544
    return-void
.end method

.method public bi(Z)V
    .locals 0

    .prologue
    .line 1245
    iput-boolean p1, p0, Lcom/android/settings_ext/wifi/T;->asH:Z

    .line 1246
    return-void
.end method

.method protected bm(Z)Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 575
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 577
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aup:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 581
    iput-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 590
    :goto_0
    if-eqz p1, :cond_2

    .line 591
    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    packed-switch v0, :pswitch_data_0

    .line 731
    const/4 v0, 0x0

    .line 740
    :goto_1
    return-object v0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    .line 593
    :pswitch_0
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 736
    :cond_2
    :goto_2
    new-instance v0, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->auQ:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->auR:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->auT:Landroid/net/StaticIpConfiguration;

    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->auS:Landroid/net/ProxyInfo;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    move-object v0, v1

    .line 740
    goto :goto_1

    .line 597
    :pswitch_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 598
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 599
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 600
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 602
    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_3

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_4

    :cond_3
    const-string v0, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 606
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v0, v5

    goto :goto_2

    .line 608
    :cond_4
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_2

    .line 614
    :pswitch_2
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 615
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 618
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 620
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 626
    :pswitch_3
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 627
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 628
    const-string v0, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 629
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 630
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 632
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    const-string v2, "support_broadcom_wapi"

    invoke-static {v2, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 635
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 636
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 647
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auU:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_2

    .line 638
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_3

    .line 641
    :cond_8
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 642
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 644
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 653
    :pswitch_4
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 654
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 655
    const-string v0, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 656
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 657
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 659
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->ava:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->auZ:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/settings_ext/bO;->a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->ava:Ljava/lang/String;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 662
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auZ:Ljava/lang/String;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 667
    :pswitch_5
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 668
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 669
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 670
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 672
    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/T;->db(I)I

    move-result v0

    .line 673
    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 674
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 675
    sparse-switch v0, :sswitch_data_0

    .line 706
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 709
    :goto_4
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auy:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 710
    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->aus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, ""

    .line 711
    :cond_b
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auA:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 713
    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->aus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, ""

    .line 714
    :cond_c
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 715
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->auB:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 716
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->auC:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 722
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 723
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 680
    :sswitch_0
    packed-switch v2, :pswitch_data_1

    .line 691
    const-string v0, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown phase2 method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 682
    :pswitch_6
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 685
    :pswitch_7
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 688
    :pswitch_8
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_4

    .line 697
    :sswitch_1
    const-string v0, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 698
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->auE:Lcom/android/settings_ext/wifi/C;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->aux:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/wifi/C;->getItemId(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/bO;->a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    goto/16 :goto_4

    .line 700
    :cond_d
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "sim_num"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->auE:Lcom/android/settings_ext/wifi/C;

    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->aux:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ext/wifi/C;->getItemId(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 727
    :cond_e
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 675
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch

    .line 680
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const v2, 0x7f100206

    .line 1553
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f1001fc

    if-ne v0, v1, :cond_2

    .line 1554
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1555
    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 1559
    if-ltz v1, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1569
    :cond_0
    :goto_1
    return-void

    .line 1555
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 1562
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f100205

    if-ne v0, v1, :cond_0

    .line 1563
    if-eqz p2, :cond_3

    .line 1564
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1566
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auv:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1574
    iput p3, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    .line 1578
    const-string v0, "mediatek"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1579
    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    .line 1582
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->tX()V

    .line 1611
    :cond_1
    :goto_0
    return-void

    .line 1583
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 1584
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->tX()V

    goto :goto_0

    .line 1585
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    .line 1586
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->uX()V

    .line 1588
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->ug()Z

    goto :goto_0

    .line 1590
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auV:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_5

    .line 1591
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auV:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1592
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/android/settings_ext/wifi/T;->avf:I

    if-ge v0, v1, :cond_1

    const-string v1, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1594
    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/T;->dd(I)V

    goto :goto_0

    .line 1596
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auW:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_6

    .line 1597
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auW:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->ava:Ljava/lang/String;

    goto :goto_0

    .line 1598
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auX:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_7

    .line 1599
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auX:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auZ:Ljava/lang/String;

    goto :goto_0

    .line 1600
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_8

    .line 1601
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->uW()V

    .line 1603
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->ug()Z

    goto :goto_0

    .line 1606
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aux:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1607
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auE:Lcom/android/settings_ext/wifi/C;

    if-eqz v0, :cond_1

    .line 1608
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auE:Lcom/android/settings_ext/wifi/C;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->aux:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/C;->cX(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 1630
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1549
    return-void
.end method

.method tN()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/T;->auo:Z

    if-nez v0, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 560
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/T;->bm(Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method protected tX()V
    .locals 10

    .prologue
    const v7, 0x7f1001fa

    const v6, 0x7f100202

    const v5, 0x7f1001fd

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 883
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/T;->avg:Z

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    invoke-interface {v0}, Lcom/android/settings_ext/wifi/V;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    iget v3, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    invoke-virtual {v0, v1, v3}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->d(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    if-nez v0, :cond_2

    .line 897
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 905
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 908
    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 910
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 911
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    .line 912
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 913
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 914
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 915
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    const v1, 0x7f0902e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 918
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auU:Landroid/widget/Spinner;

    .line 924
    :cond_4
    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 925
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f10020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 977
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ase:Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/aG;->f(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 978
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 979
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/aG;->bK(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 981
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f10030b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 982
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f10030b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 998
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 999
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    .line 1002
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1003
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 934
    :cond_7
    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 935
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f10020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 943
    const-string v0, "mediatek"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 944
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auW:Landroid/widget/Spinner;

    .line 945
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auX:Landroid/widget/Spinner;

    .line 946
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auW:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 947
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auX:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 948
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auW:Landroid/widget/Spinner;

    const-string v1, "WAPISERVERCERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/wifi/T;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auX:Landroid/widget/Spinner;

    const-string v1, "WAPIUSERCERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/wifi/T;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 954
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 957
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->avd:Landroid/widget/TextView;

    .line 958
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auV:Landroid/widget/Spinner;

    .line 959
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auV:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 960
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/T;->uY()V

    .line 961
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 965
    :cond_9
    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    .line 967
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f100203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f10020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 986
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f10030b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 987
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f10030b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 989
    :cond_b
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f10030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 990
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f10030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :cond_c
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 993
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1007
    :cond_d
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    .line 1010
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1011
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v0, :cond_f

    const-string v0, "CMCC"

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    move v1, v0

    .line 1017
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    if-nez v0, :cond_19

    .line 1018
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v3, 0x7f1001ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    .line 1019
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1021
    const-string v0, "support_eap_sim"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1022
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    sget v6, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v1, :cond_10

    const v0, 0x7f0b0086

    :goto_4
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1025
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1028
    :cond_e
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v3, 0x7f1001ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    .line 1030
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v3, 0x7f1001ee

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auy:Landroid/widget/Spinner;

    .line 1032
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v3, 0x7f1001f0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auA:Landroid/widget/Spinner;

    .line 1033
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v3, 0x7f1001f2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auB:Landroid/widget/TextView;

    .line 1034
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v3, 0x7f1001f4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auC:Landroid/widget/TextView;

    .line 1036
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v3, 0x7f100309

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->aux:Landroid/widget/Spinner;

    .line 1037
    new-instance v0, Lcom/android/settings_ext/wifi/C;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/settings_ext/wifi/C;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auE:Lcom/android/settings_ext/wifi/C;

    .line 1038
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1039
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_11

    .line 1042
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1043
    iget-object v6, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v6, :cond_1d

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings_ext/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings_ext/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1044
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v6, "sim_num"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1d

    .line 1046
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move v0, v3

    :goto_6
    move v3, v0

    .line 1048
    goto :goto_5

    :cond_f
    move v1, v2

    .line 1015
    goto/16 :goto_3

    .line 1022
    :cond_10
    const v0, 0x7f0b0085

    goto/16 :goto_4

    :cond_11
    move v3, v2

    .line 1049
    :cond_12
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aux:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1050
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aux:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->auE:Lcom/android/settings_ext/wifi/C;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1051
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auE:Lcom/android/settings_ext/wifi/C;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/C;->getCount()I

    move-result v0

    const/4 v5, 0x1

    if-gt v0, v5, :cond_16

    .line 1052
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aux:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1063
    :cond_13
    :goto_7
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auy:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/wifi/T;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auA:Landroid/widget/Spinner;

    const-string v3, "USRPKEY_"

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/wifi/T;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_18

    .line 1068
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1069
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    .line 1070
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v6

    .line 1074
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    .line 1075
    if-lt v3, v0, :cond_1c

    .line 1076
    add-int/lit8 v0, v0, -0x1

    .line 1078
    :goto_8
    iget-object v7, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1081
    invoke-direct {p0, v3}, Lcom/android/settings_ext/wifi/T;->dc(I)V

    .line 1082
    packed-switch v3, :pswitch_data_0

    .line 1100
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1103
    :goto_9
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auy:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/wifi/T;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auA:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/wifi/T;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auB:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auC:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    :goto_a
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/T;->a(Lcom/android/settings_ext/wifi/AccessPoint;)V

    .line 1121
    :goto_b
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v3, "MIOffice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_1a

    const/4 v0, 0x1

    .line 1123
    :goto_c
    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    if-eqz v3, :cond_14

    .line 1124
    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1126
    :cond_14
    if-nez v0, :cond_15

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    const-string v0, "CMCC-AUTO"

    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v1, :cond_0

    .line 1127
    :cond_15
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v3, 0x7f1001e9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_1b

    :goto_d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v1, 0x7f1001f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_16
    move v0, v2

    .line 1054
    :goto_e
    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->auE:Lcom/android/settings_ext/wifi/C;

    invoke-virtual {v5}, Lcom/android/settings_ext/wifi/C;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_13

    .line 1055
    iget-object v5, p0, Lcom/android/settings_ext/wifi/T;->auE:Lcom/android/settings_ext/wifi/C;

    invoke-virtual {v5, v0}, Lcom/android/settings_ext/wifi/C;->getItemId(I)J

    move-result-wide v6

    int-to-long v8, v3

    cmp-long v5, v6, v8

    if-nez v5, :cond_17

    .line 1056
    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->aux:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 1054
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1084
    :pswitch_0
    packed-switch v6, :pswitch_data_1

    .line 1095
    :pswitch_1
    const-string v0, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid phase 2 method "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1086
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_9

    .line 1089
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_9

    .line 1092
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auz:Landroid/widget/Spinner;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_9

    .line 1110
    :cond_18
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1111
    invoke-direct {p0, v2}, Lcom/android/settings_ext/wifi/T;->dc(I)V

    goto/16 :goto_a

    .line 1116
    :cond_19
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auw:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/T;->dc(I)V

    goto/16 :goto_b

    :cond_1a
    move v0, v2

    .line 1122
    goto/16 :goto_c

    :cond_1b
    move v2, v4

    .line 1127
    goto/16 :goto_d

    :cond_1c
    move v0, v3

    goto/16 :goto_8

    :cond_1d
    move v0, v3

    goto/16 :goto_6

    .line 1082
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1084
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public tZ()Z
    .locals 1

    .prologue
    .line 1250
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/T;->asH:Z

    return v0
.end method

.method uM()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    invoke-interface {v0}, Lcom/android/settings_ext/wifi/V;->va()Landroid/widget/Button;

    move-result-object v0

    .line 522
    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 524
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected uW()V
    .locals 5

    .prologue
    const v4, 0x7f100211

    const/4 v3, 0x0

    .line 1323
    const/4 v0, 0x0

    .line 1325
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f10020f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 1328
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1331
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1332
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auG:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f100212

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auG:Landroid/widget/TextView;

    .line 1335
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auG:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1336
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f100213

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auH:Landroid/widget/TextView;

    .line 1337
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auH:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1338
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f100214

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auI:Landroid/widget/TextView;

    .line 1340
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auI:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1341
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f100215

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auJ:Landroid/widget/TextView;

    .line 1342
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auJ:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1343
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f100216

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auK:Landroid/widget/TextView;

    .line 1344
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auK:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1346
    :cond_0
    if-eqz v1, :cond_4

    .line 1347
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 1348
    if-eqz v0, :cond_5

    .line 1349
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_1

    .line 1350
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auG:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auI:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    :cond_1
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_2

    .line 1357
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auH:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    :cond_2
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1361
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1362
    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->auJ:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1365
    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->auK:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    :cond_4
    :goto_1
    return-void

    .line 1369
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1370
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1371
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 1372
    if-eqz v0, :cond_4

    .line 1373
    iget v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1374
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1375
    iget-object v2, p0, Lcom/android/settings_ext/wifi/T;->auG:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auH:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1382
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected uX()V
    .locals 8

    .prologue
    const v7, 0x7f10030e

    const v6, 0x7f10020b

    const v5, 0x7f10020a

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1389
    const/4 v0, 0x0

    .line 1391
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f100207

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1393
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1394
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1397
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1398
    invoke-direct {p0, v5, v4}, Lcom/android/settings_ext/wifi/T;->t(II)V

    .line 1399
    invoke-direct {p0, v6, v4}, Lcom/android/settings_ext/wifi/T;->t(II)V

    .line 1400
    invoke-direct {p0, v7, v3}, Lcom/android/settings_ext/wifi/T;->t(II)V

    .line 1401
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auM:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f10020c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auM:Landroid/widget/TextView;

    .line 1403
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auM:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1404
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f10020d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auN:Landroid/widget/TextView;

    .line 1405
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auN:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1406
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f10020e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auO:Landroid/widget/TextView;

    .line 1407
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auO:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1409
    :cond_0
    if-eqz v1, :cond_1

    .line 1410
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 1411
    if-eqz v0, :cond_1

    .line 1412
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auM:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auO:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    :cond_1
    :goto_1
    return-void

    .line 1417
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1418
    invoke-direct {p0, v5, v3}, Lcom/android/settings_ext/wifi/T;->t(II)V

    .line 1419
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ext/wifi/T;->t(II)V

    .line 1420
    invoke-direct {p0, v7, v4}, Lcom/android/settings_ext/wifi/T;->t(II)V

    .line 1422
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auP:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 1423
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->mView:Landroid/view/View;

    const v2, 0x7f10030f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auP:Landroid/widget/TextView;

    .line 1424
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auP:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1426
    :cond_3
    if-eqz v1, :cond_1

    .line 1427
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 1428
    if-eqz v0, :cond_1

    .line 1429
    iget-object v1, p0, Lcom/android/settings_ext/wifi/T;->auP:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1433
    :cond_4
    invoke-direct {p0, v5, v3}, Lcom/android/settings_ext/wifi/T;->t(II)V

    .line 1434
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ext/wifi/T;->t(II)V

    .line 1435
    invoke-direct {p0, v7, v3}, Lcom/android/settings_ext/wifi/T;->t(II)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public uZ()Z
    .locals 1

    .prologue
    .line 1529
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/T;->auo:Z

    return v0
.end method

.method uf()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aun:Lcom/android/settings_ext/wifi/V;

    invoke-interface {v0}, Lcom/android/settings_ext/wifi/V;->va()Landroid/widget/Button;

    move-result-object v3

    .line 530
    if-nez v3, :cond_0

    .line 553
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/settings_ext/wifi/T;->auq:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v4, 0x8

    if-ge v0, v4, :cond_7

    :cond_2
    move v0, v2

    .line 541
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->aup:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->aup:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ext/wifi/T;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    :cond_4
    if-eqz v0, :cond_6

    .line 552
    :cond_5
    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 546
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/T;->ug()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    .line 547
    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method protected ug()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 746
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auF:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auQ:Landroid/net/IpConfiguration$IpAssignment;

    .line 750
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auQ:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 751
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auT:Landroid/net/StaticIpConfiguration;

    .line 752
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auT:Landroid/net/StaticIpConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/T;->a(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    .line 753
    if-eqz v0, :cond_1

    move v0, v1

    .line 791
    :goto_1
    return v0

    .line 746
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auL:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 759
    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/T;->auR:Landroid/net/IpConfiguration$ProxySettings;

    .line 760
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings_ext/wifi/T;->auS:Landroid/net/ProxyInfo;

    .line 761
    if-ne v0, v2, :cond_4

    iget-object v3, p0, Lcom/android/settings_ext/wifi/T;->auM:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 762
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auR:Landroid/net/IpConfiguration$ProxySettings;

    .line 763
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auM:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 764
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 765
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auO:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 769
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 770
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings_ext/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 774
    :goto_2
    if-nez v0, :cond_3

    .line 775
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auS:Landroid/net/ProxyInfo;

    :cond_2
    :goto_3
    move v0, v2

    .line 791
    goto :goto_1

    .line 771
    :catch_0
    move-exception v0

    move v0, v1

    .line 772
    :goto_4
    const v3, 0x7f090128

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_2

    :cond_3
    move v0, v1

    .line 777
    goto :goto_1

    .line 779
    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auP:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 780
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/T;->auR:Landroid/net/IpConfiguration$ProxySettings;

    .line 781
    iget-object v0, p0, Lcom/android/settings_ext/wifi/T;->auP:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 782
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 783
    goto :goto_1

    .line 785
    :cond_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 786
    if-nez v0, :cond_6

    move v0, v1

    .line 787
    goto :goto_1

    .line 789
    :cond_6
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, v0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/settings_ext/wifi/T;->auS:Landroid/net/ProxyInfo;

    goto :goto_3

    .line 771
    :catch_1
    move-exception v3

    goto :goto_4
.end method
