.class public Lcom/android/settings_ext/FieldTestInfo;
.super Lmiui/app/Activity;
.source "FieldTestInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private le:[Ljava/lang/String;

.field private lf:Landroid/widget/Spinner;

.field private lg:Landroid/widget/TextView;

.field private lh:Landroid/widget/TextView;

.field private li:Landroid/widget/TextView;

.field private lj:Landroid/widget/TextView;

.field private lk:Landroid/widget/TextView;

.field private ll:Landroid/widget/TextView;

.field private lm:Landroid/widget/TextView;

.field private ln:Landroid/widget/TextView;

.field private lo:Landroid/widget/TextView;

.field private lp:Landroid/widget/TextView;

.field private lq:Landroid/widget/TextView;

.field private lr:Landroid/widget/TextView;

.field private ls:Lmiui/telephony/TelephonyManager;

.field private lt:Lcom/android/internal/telephony/Phone;

.field private lu:Lmiui/telephony/SubscriptionInfo;

.field private lv:Landroid/telephony/PhoneStateListener;

.field lw:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 84
    const-string v0, "FieldTest"

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->TAG:Ljava/lang/String;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Card 1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Card 2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->le:[Ljava/lang/String;

    .line 118
    iput-object v3, p0, Lcom/android/settings_ext/FieldTestInfo;->lt:Lcom/android/internal/telephony/Phone;

    .line 120
    iput-object v3, p0, Lcom/android/settings_ext/FieldTestInfo;->lu:Lmiui/telephony/SubscriptionInfo;

    .line 123
    new-instance v0, Lcom/android/settings_ext/cq;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/cq;-><init>(Lcom/android/settings_ext/FieldTestInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lv:Landroid/telephony/PhoneStateListener;

    .line 149
    new-instance v0, Lcom/android/settings_ext/cr;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/cr;-><init>(Lcom/android/settings_ext/FieldTestInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->mHandler:Landroid/os/Handler;

    .line 398
    new-instance v0, Lcom/android/settings_ext/cs;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/cs;-><init>(Lcom/android/settings_ext/FieldTestInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lw:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/FieldTestInfo;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/settings_ext/FieldTestInfo;->mSlotId:I

    return v0
.end method

.method static synthetic a(Lcom/android/settings_ext/FieldTestInfo;I)I
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/android/settings_ext/FieldTestInfo;->mSlotId:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings_ext/FieldTestInfo;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/FieldTestInfo;->lt:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/FieldTestInfo;Lmiui/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/FieldTestInfo;->lu:Lmiui/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/FieldTestInfo;Lmiui/telephony/TelephonyManager;)Lmiui/telephony/TelephonyManager;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/FieldTestInfo;->ls:Lmiui/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/FieldTestInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings_ext/FieldTestInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/FieldTestInfo;)Landroid/telephony/PhoneStateListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lv:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/FieldTestInfo;)Lmiui/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->ls:Lmiui/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dr()V

    return-void
.end method

.method private final dA()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/android/settings_ext/FieldTestInfo;->lp:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    return-void
.end method

.method private final dB()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lq:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method

.method private final dC()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lr:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method private dr()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->ls:Lmiui/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings_ext/FieldTestInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ext/FieldTestInfo;->lt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lg:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private final ds()V
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/FieldTestInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getCellLocationForSlot(I)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_1

    .line 302
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 303
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/android/settings_ext/FieldTestInfo;->lh:Landroid/widget/TextView;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :goto_1
    return-void

    .line 304
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lh:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private final dt()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->li:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    return-void
.end method

.method private final du()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lj:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    return-void
.end method

.method private final dv()V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/android/settings_ext/FieldTestInfo;->lt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/settings_ext/FieldTestInfo;->lk:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lk:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private final dw()V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/android/settings_ext/FieldTestInfo;->lt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/settings_ext/FieldTestInfo;->ll:Landroid/widget/TextView;

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->ll:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private final dx()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lm:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method

.method private final dy()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->ln:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method

.method private final dz()V
    .locals 3

    .prologue
    .line 345
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/FieldTestInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getCellLocationForSlot(I)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_1

    .line 347
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 348
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/android/settings_ext/FieldTestInfo;->lo:Landroid/widget/TextView;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :goto_1
    return-void

    .line 349
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lo:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->ds()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dt()V

    return-void
.end method

.method static synthetic g(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->du()V

    return-void
.end method

.method static synthetic h(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dv()V

    return-void
.end method

.method static synthetic i(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dw()V

    return-void
.end method

.method static synthetic j(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dx()V

    return-void
.end method

.method static synthetic k(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dy()V

    return-void
.end method

.method static synthetic l(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dz()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 442
    const-string v0, "FieldTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FieldTestInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method static synthetic m(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dA()V

    return-void
.end method

.method static synthetic n(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dB()V

    return-void
.end method

.method static synthetic o(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dC()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    const v0, 0x7f04005f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->setContentView(I)V

    .line 208
    iput-object p0, p0, Lcom/android/settings_ext/FieldTestInfo;->mContext:Landroid/content/Context;

    .line 209
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-static {}, Lcom/android/settings_ext/eK;->fB()Lcom/android/settings_ext/eK;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings_ext/eK;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lt:Lcom/android/internal/telephony/Phone;

    .line 211
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->ls:Lmiui/telephony/TelephonyManager;

    .line 212
    iput v3, p0, Lcom/android/settings_ext/FieldTestInfo;->mSlotId:I

    .line 213
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/FieldTestInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lu:Lmiui/telephony/SubscriptionInfo;

    .line 221
    :goto_0
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lf:Landroid/widget/Spinner;

    .line 222
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/android/settings_ext/FieldTestInfo;->le:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 224
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 225
    iget-object v1, p0, Lcom/android/settings_ext/FieldTestInfo;->lf:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lf:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/FieldTestInfo;->lw:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lf:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 229
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lf:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 232
    :cond_0
    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lg:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lh:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->li:Landroid/widget/TextView;

    .line 235
    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lj:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lk:Landroid/widget/TextView;

    .line 237
    const v0, 0x7f1000dc

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->ll:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lm:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->ln:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f1000df

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lo:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lp:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f1000e1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lq:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f1000e2

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lr:Landroid/widget/TextView;

    .line 245
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings_ext/FieldTestInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 246
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 247
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 248
    return-void

    .line 215
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lt:Lcom/android/internal/telephony/Phone;

    .line 216
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->ls:Lmiui/telephony/TelephonyManager;

    .line 217
    iput v3, p0, Lcom/android/settings_ext/FieldTestInfo;->mSlotId:I

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->lu:Lmiui/telephony/SubscriptionInfo;

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 279
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 281
    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->log(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 284
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->ls:Lmiui/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings_ext/FieldTestInfo;->mSlotId:I

    iget-object v2, p0, Lcom/android/settings_ext/FieldTestInfo;->lv:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 285
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 252
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 254
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dr()V

    .line 255
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->ds()V

    .line 256
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dt()V

    .line 257
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->du()V

    .line 258
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dv()V

    .line 259
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dw()V

    .line 260
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dx()V

    .line 261
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dy()V

    .line 262
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dz()V

    .line 263
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dA()V

    .line 264
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dB()V

    .line 265
    invoke-direct {p0}, Lcom/android/settings_ext/FieldTestInfo;->dC()V

    .line 267
    const-string v0, "onResume: register phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/FieldTestInfo;->log(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 270
    iget-object v0, p0, Lcom/android/settings_ext/FieldTestInfo;->ls:Lmiui/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings_ext/FieldTestInfo;->mSlotId:I

    iget-object v2, p0, Lcom/android/settings_ext/FieldTestInfo;->lv:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x4d0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 275
    return-void
.end method
