.class public Lcom/android/settings_ext/RadioInfo;
.super Lmiui/app/Activity;
.source "RadioInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private lt:Lcom/android/internal/telephony/Phone;

.field private lu:Lmiui/telephony/SubscriptionInfo;

.field private lv:Landroid/telephony/PhoneStateListener;

.field private mHandler:Landroid/os/Handler;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSlotId:I

.field private uL:Landroid/widget/TextView;

.field private uM:Landroid/widget/TextView;

.field private uN:Landroid/widget/TextView;

.field private uO:Landroid/widget/TextView;

.field private uP:Landroid/widget/TextView;

.field private uQ:Landroid/widget/TextView;

.field private uR:Landroid/widget/TextView;

.field private uS:Landroid/widget/TextView;

.field private uT:Landroid/widget/TextView;

.field private uU:Landroid/widget/TextView;

.field private uV:Landroid/widget/TextView;

.field private uW:Landroid/widget/TextView;

.field private uX:Landroid/widget/TextView;

.field private uY:Landroid/widget/TextView;

.field private uZ:Landroid/widget/TextView;

.field private vA:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private vB:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private vC:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private vD:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private vE:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private vF:Landroid/view/MenuItem$OnMenuItemClickListener;

.field vG:Landroid/view/View$OnClickListener;

.field vH:Lcom/android/settings_ext/fX;

.field private vI:Landroid/widget/Button;

.field vJ:Landroid/view/View$OnClickListener;

.field private vK:Landroid/widget/Button;

.field vL:Landroid/view/View$OnClickListener;

.field private vM:Landroid/widget/Button;

.field vN:Landroid/view/View$OnClickListener;

.field vO:Landroid/view/View$OnClickListener;

.field vP:Landroid/view/View$OnClickListener;

.field vQ:Landroid/view/View$OnClickListener;

.field vR:Landroid/view/View$OnClickListener;

.field vS:Landroid/view/View$OnClickListener;

.field vT:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private vU:[Ljava/lang/String;

.field private va:Landroid/widget/TextView;

.field private vb:Landroid/widget/TextView;

.field private vc:Landroid/widget/TextView;

.field private vd:Landroid/widget/TextView;

.field private ve:Landroid/widget/TextView;

.field private vf:Landroid/widget/TextView;

.field private vg:Landroid/widget/TextView;

.field private vh:Landroid/widget/TextView;

.field private vi:Landroid/widget/TextView;

.field private vj:Landroid/widget/TextView;

.field private vk:Landroid/widget/TextView;

.field private vl:Landroid/widget/EditText;

.field private vm:Landroid/widget/Button;

.field private vn:Landroid/widget/Button;

.field private vo:Landroid/widget/Button;

.field private vp:Landroid/widget/Button;

.field private vq:Landroid/widget/Button;

.field private vr:Landroid/widget/Button;

.field private vs:Landroid/widget/Button;

.field private vt:Landroid/widget/Spinner;

.field private vu:Ljava/lang/String;

.field private vv:Ljava/lang/String;

.field private vw:Ljava/lang/String;

.field private vx:Z

.field private vy:Z

.field private vz:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 84
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->TAG:Ljava/lang/String;

    .line 149
    iput-object v1, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    .line 151
    iput-object v1, p0, Lcom/android/settings_ext/RadioInfo;->lu:Lmiui/telephony/SubscriptionInfo;

    .line 157
    iput-boolean v2, p0, Lcom/android/settings_ext/RadioInfo;->vx:Z

    .line 158
    iput-boolean v2, p0, Lcom/android/settings_ext/RadioInfo;->vy:Z

    .line 161
    new-instance v0, Lcom/android/settings_ext/fA;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fA;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lv:Landroid/telephony/PhoneStateListener;

    .line 211
    new-instance v0, Lcom/android/settings_ext/fL;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fL;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 911
    new-instance v0, Lcom/android/settings_ext/fU;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fU;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vA:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 926
    new-instance v0, Lcom/android/settings_ext/fV;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fV;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vB:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 941
    new-instance v0, Lcom/android/settings_ext/fW;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fW;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vC:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 957
    new-instance v0, Lcom/android/settings_ext/fB;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fB;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vD:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 964
    new-instance v0, Lcom/android/settings_ext/fC;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fC;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vE:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 973
    new-instance v0, Lcom/android/settings_ext/fD;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fD;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vF:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 991
    new-instance v0, Lcom/android/settings_ext/fE;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fE;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vG:Landroid/view/View$OnClickListener;

    .line 1016
    new-instance v0, Lcom/android/settings_ext/fX;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fX;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vH:Lcom/android/settings_ext/fX;

    .line 1020
    new-instance v0, Lcom/android/settings_ext/fF;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fF;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vJ:Landroid/view/View$OnClickListener;

    .line 1046
    new-instance v0, Lcom/android/settings_ext/fG;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fG;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vL:Landroid/view/View$OnClickListener;

    .line 1071
    new-instance v0, Lcom/android/settings_ext/fH;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fH;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vN:Landroid/view/View$OnClickListener;

    .line 1094
    new-instance v0, Lcom/android/settings_ext/fI;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fI;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vO:Landroid/view/View$OnClickListener;

    .line 1101
    new-instance v0, Lcom/android/settings_ext/fJ;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fJ;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vP:Landroid/view/View$OnClickListener;

    .line 1114
    new-instance v0, Lcom/android/settings_ext/fK;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fK;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vQ:Landroid/view/View$OnClickListener;

    .line 1120
    new-instance v0, Lcom/android/settings_ext/fM;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fM;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vR:Landroid/view/View$OnClickListener;

    .line 1128
    new-instance v0, Lcom/android/settings_ext/fN;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fN;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vS:Landroid/view/View$OnClickListener;

    .line 1134
    new-instance v0, Lcom/android/settings_ext/fO;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/fO;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vT:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1147
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GSM auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EvDo only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LTE/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LTE/GSM auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LTE/GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTE only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LTE/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TD-SCDMA only"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TD-SCDMA and WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TD-SCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TD-SCDMA and GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TD-SCDMA,GSM and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TD-SCDMA, GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TD-SCDMA, WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "TD-SCDMA, GSM/WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TD-SCDMA, GSM/WCDMA, CDMA and EvDo"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TD-SCDMA, LTE, CDMA, EvDo GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vU:[Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/android/settings_ext/RadioInfo;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    return v0
.end method

.method static synthetic B(Lcom/android/settings_ext/RadioInfo;)Z
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic C(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->fX()V

    return-void
.end method

.method static synthetic D(Lcom/android/settings_ext/RadioInfo;)Z
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->go()Z

    move-result v0

    return v0
.end method

.method static synthetic E(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gp()V

    return-void
.end method

.method static synthetic F(Lcom/android/settings_ext/RadioInfo;)Z
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gq()Z

    move-result v0

    return v0
.end method

.method static synthetic G(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gr()V

    return-void
.end method

.method static synthetic H(Lcom/android/settings_ext/RadioInfo;)Z
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gs()Z

    move-result v0

    return v0
.end method

.method static synthetic I(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gt()V

    return-void
.end method

.method static synthetic J(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->fY()V

    return-void
.end method

.method static synthetic K(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gm()V

    return-void
.end method

.method static synthetic L(Lcom/android/settings_ext/RadioInfo;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic M(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gl()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/RadioInfo;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method private final a(Landroid/telephony/CellLocation;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 532
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 533
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 534
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 535
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 536
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 537
    iget-object v3, p0, Lcom/android/settings_ext/RadioInfo;->uW:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0900a0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v8, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0900a1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_1

    const-string v0, "unknown"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :goto_2
    return-void

    .line 537
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 542
    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 543
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 544
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 545
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 546
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 547
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 548
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    .line 549
    iget-object v5, p0, Lcom/android/settings_ext/RadioInfo;->uW:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v8, :cond_3

    const-string v0, "unknown"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "SID = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v8, :cond_4

    const-string v0, "unknown"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_5

    const-string v0, "unknown"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LAT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v3, v8, :cond_6

    const-string v0, "unknown"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LONG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v4, v8, :cond_7

    const-string v0, "unknown"

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 564
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uW:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private final a(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uZ:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->fZ()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings_ext/RadioInfo;->a(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings_ext/RadioInfo;->a(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/RadioInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings_ext/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings_ext/RadioInfo;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/RadioInfo;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings_ext/RadioInfo;->e(Ljava/util/List;)V

    return-void
.end method

.method private final a(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    if-eqz p1, :cond_2

    .line 574
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    const-string v0, "no neighboring cells"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uX:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    return-void

    .line 577
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 578
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 582
    :cond_2
    const-string v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/RadioInfo;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings_ext/RadioInfo;->vx:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gd()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/RadioInfo;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings_ext/RadioInfo;->vy:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gg()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gn()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->ge()V

    return-void
.end method

.method private final e(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/settings_ext/RadioInfo;->vz:Ljava/util/List;

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vz:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 591
    const/4 v0, 0x0

    .line 592
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 593
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 598
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v1, v0

    .line 600
    goto :goto_0

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uY:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    return-void
.end method

.method static synthetic f(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gh()V

    return-void
.end method

.method private fW()V
    .locals 2

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->isRadioOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090083

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vm:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 493
    return-void

    .line 489
    :cond_0
    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fX()V
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoListRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->vH:Lcom/android/settings_ext/fX;

    invoke-virtual {v2}, Lcom/android/settings_ext/fX;->gv()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSlot(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/RadioInfo;->e(Ljava/util/List;)V

    .line 498
    return-void
.end method

.method private fY()V
    .locals 2

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vk:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    return-void

    .line 501
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private final fZ()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 507
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 509
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 511
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uT:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    .line 518
    if-ne v4, v0, :cond_2

    move v0, v1

    .line 520
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v2

    .line 522
    if-ne v4, v2, :cond_4

    .line 524
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->uT:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f09009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f09009f

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method static synthetic g(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->ga()V

    return-void
.end method

.method private final ga()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uU:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings_ext/RadioInfo;->vx:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    return-void
.end method

.method private final gb()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uV:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings_ext/RadioInfo;->vy:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    return-void
.end method

.method private final gc()V
    .locals 5

    .prologue
    const v4, 0x7f090a32

    .line 622
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 623
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 624
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 625
    const v0, 0x7f09009b

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 627
    packed-switch v2, :pswitch_data_0

    .line 640
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->uQ:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uP:Landroid/widget/TextView;

    const v2, 0x7f090092

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 648
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lu:Lmiui/telephony/SubscriptionInfo;

    if-eqz v0, :cond_3

    .line 649
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lu:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 650
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->uO:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lu:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    :goto_4
    return-void

    .line 629
    :pswitch_0
    const v0, 0x7f09008e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 633
    :pswitch_1
    const v0, 0x7f090090

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 636
    :pswitch_2
    const v0, 0x7f090091

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uP:Landroid/widget/TextView;

    const v2, 0x7f090093

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 649
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 650
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 652
    :cond_3
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v2, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v2}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 653
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uO:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 655
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uO:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final gd()V
    .locals 3

    .prologue
    .line 682
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getDataStateForSlot(I)I

    move-result v1

    .line 683
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 684
    const v0, 0x7f09009b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 686
    packed-switch v1, :pswitch_data_0

    .line 701
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->uR:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    return-void

    .line 688
    :pswitch_0
    const v0, 0x7f090099

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 691
    :pswitch_1
    const v0, 0x7f090098

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 694
    :pswitch_2
    const v0, 0x7f090097

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 697
    :pswitch_3
    const v0, 0x7f09009a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final ge()V
    .locals 4

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uS:Landroid/widget/TextView;

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    invoke-virtual {v2, v3}, Lmiui/telephony/TelephonyManager;->getNetworkTypeForSlot(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    return-void
.end method

.method private final gf()V
    .locals 4

    .prologue
    const v3, 0x7f09009b

    .line 711
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 713
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 714
    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->uL:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 719
    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 720
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->uM:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    return-void
.end method

.method private final gg()V
    .locals 2

    .prologue
    .line 726
    const-string v0, "net.gsm.radio-reset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->va:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    const-string v0, "net.gsm.attempt-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vb:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    const-string v0, "net.gsm.succeed-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vc:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    const-string v0, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->ve:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    return-void
.end method

.method private final gh()V
    .locals 12

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 745
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v2

    .line 746
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v4

    .line 747
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v6

    .line 748
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v8

    .line 750
    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 751
    const v10, 0x7f09009d

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 753
    iget-object v10, p0, Lcom/android/settings_ext/RadioInfo;->vf:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->vg:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    return-void
.end method

.method private final gi()V
    .locals 4

    .prologue
    .line 764
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 765
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 767
    if-nez v0, :cond_0

    .line 768
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vu:Ljava/lang/String;

    .line 777
    :goto_0
    return-void

    .line 770
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vu:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vu:Ljava/lang/String;

    goto :goto_0

    .line 774
    :catch_1
    move-exception v0

    .line 775
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vu:Ljava/lang/String;

    goto :goto_0
.end method

.method private final gj()V
    .locals 2

    .prologue
    .line 784
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 786
    if-nez v0, :cond_0

    .line 787
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vv:Ljava/lang/String;

    .line 798
    :goto_0
    return-void

    .line 789
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vv:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 791
    :catch_0
    move-exception v0

    .line 792
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vv:Ljava/lang/String;

    goto :goto_0

    .line 793
    :catch_1
    move-exception v0

    .line 794
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vv:Ljava/lang/String;

    goto :goto_0

    .line 795
    :catch_2
    move-exception v0

    .line 796
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vv:Ljava/lang/String;

    goto :goto_0
.end method

.method private gk()V
    .locals 4

    .prologue
    .line 804
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 806
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "http://www.google.com"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 807
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 808
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 809
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vw:Ljava/lang/String;

    .line 813
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 817
    :goto_1
    return-void

    .line 811
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail: Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vw:Ljava/lang/String;

    goto :goto_1
.end method

.method private gl()V
    .locals 3

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 821
    return-void
.end method

.method private final gm()V
    .locals 3

    .prologue
    const v2, 0x7f09009b

    .line 824
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 826
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vu:Ljava/lang/String;

    .line 827
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vv:Ljava/lang/String;

    .line 828
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vw:Ljava/lang/String;

    .line 830
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vh:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->vu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vi:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->vv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vj:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->vw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    new-instance v1, Lcom/android/settings_ext/fQ;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/fQ;-><init>(Lcom/android/settings_ext/RadioInfo;)V

    .line 841
    new-instance v2, Lcom/android/settings_ext/fR;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings_ext/fR;-><init>(Lcom/android/settings_ext/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 848
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 850
    new-instance v2, Lcom/android/settings_ext/fS;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings_ext/fS;-><init>(Lcom/android/settings_ext/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 857
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 859
    new-instance v2, Lcom/android/settings_ext/fT;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings_ext/fT;-><init>(Lcom/android/settings_ext/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 866
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 867
    return-void
.end method

.method private final gn()V
    .locals 2

    .prologue
    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 908
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vd:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    return-void
.end method

.method private go()Z
    .locals 2

    .prologue
    .line 1033
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private gp()V
    .locals 2

    .prologue
    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->go()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/RadioInfo;->log(Ljava/lang/String;)V

    .line 1038
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->go()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090087

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1041
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vI:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    return-void

    .line 1038
    :cond_0
    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private gq()Z
    .locals 2

    .prologue
    .line 1058
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private gr()V
    .locals 2

    .prologue
    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gq()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/RadioInfo;->log(Ljava/lang/String;)V

    .line 1063
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gq()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090085

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1066
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vK:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    return-void

    .line 1063
    :cond_0
    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private gs()Z
    .locals 2

    .prologue
    .line 1083
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private gt()V
    .locals 2

    .prologue
    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gs()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/RadioInfo;->log(Ljava/lang/String;)V

    .line 1088
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gs()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1091
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vM:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    return-void

    .line 1088
    :cond_0
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private gu()V
    .locals 3

    .prologue
    .line 1181
    sget-boolean v0, Lmiui/os/Build;->IS_TDS_CDMA:Z

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vU:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TD-SCDMA preferred"

    aput-object v2, v0, v1

    .line 1183
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vU:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "TD-SCDMA only"

    aput-object v2, v0, v1

    .line 1185
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gb()V

    return-void
.end method

.method static synthetic i(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gc()V

    return-void
.end method

.method static synthetic k(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->fW()V

    return-void
.end method

.method static synthetic l(Lcom/android/settings_ext/RadioInfo;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vU:[Ljava/lang/String;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1174
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return-void
.end method

.method static synthetic m(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vt:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic n(Lcom/android/settings_ext/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic o(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vl:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic q(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vq:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic r(Lcom/android/settings_ext/RadioInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/android/settings_ext/RadioInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vi:Landroid/widget/TextView;

    return-object v0
.end method

.method private final updatePhoneState()V
    .locals 4

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 662
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 663
    const v0, 0x7f09009b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    sget-object v3, Lcom/android/settings_ext/fP;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 677
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->uN:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    return-void

    .line 667
    :pswitch_0
    const v0, 0x7f090094

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 670
    :pswitch_1
    const v0, 0x7f090095

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 673
    :pswitch_2
    const v0, 0x7f090096

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 665
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic v(Lcom/android/settings_ext/RadioInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gi()V

    return-void
.end method

.method static synthetic y(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gj()V

    return-void
.end method

.method static synthetic z(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gk()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 281
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 283
    const v0, 0x7f0400de

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->setContentView(I)V

    .line 285
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 287
    const-string v1, "phone_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v1, "phone1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-static {}, Lcom/android/settings_ext/eK;->fB()Lcom/android/settings_ext/eK;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings_ext/eK;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    .line 290
    iput v3, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    .line 291
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lu:Lmiui/telephony/SubscriptionInfo;

    .line 305
    :goto_0
    const v0, 0x7f10022b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uL:Landroid/widget/TextView;

    .line 306
    const v0, 0x7f10014b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uM:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f10023c

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uN:Landroid/widget/TextView;

    .line 308
    const v0, 0x7f10022c

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uO:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f100236

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uP:Landroid/widget/TextView;

    .line 310
    const v0, 0x7f100237

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uQ:Landroid/widget/TextView;

    .line 311
    const v0, 0x7f100238

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uR:Landroid/widget/TextView;

    .line 312
    const v0, 0x7f100239

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uS:Landroid/widget/TextView;

    .line 313
    const v0, 0x7f100231

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uT:Landroid/widget/TextView;

    .line 314
    const v0, 0x7f10023a

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uU:Landroid/widget/TextView;

    .line 315
    const v0, 0x7f10023b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uV:Landroid/widget/TextView;

    .line 316
    const v0, 0x7f100232

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uW:Landroid/widget/TextView;

    .line 317
    const v0, 0x7f100233

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uX:Landroid/widget/TextView;

    .line 318
    const v0, 0x7f100234

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uY:Landroid/widget/TextView;

    .line 319
    const v0, 0x7f100235

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->uZ:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f10023d

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->va:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f10023e

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vb:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f10023f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vc:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f100240

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vd:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f100243

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->ve:Landroid/widget/TextView;

    .line 326
    const v0, 0x7f100241

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vf:Landroid/widget/TextView;

    .line 327
    const v0, 0x7f100242

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vg:Landroid/widget/TextView;

    .line 328
    const v0, 0x7f10024d

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vl:Landroid/widget/EditText;

    .line 329
    const v0, 0x7f10024f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vk:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f10022e

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vh:Landroid/widget/TextView;

    .line 332
    const v0, 0x7f10022f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vi:Landroid/widget/TextView;

    .line 333
    const v0, 0x7f100230

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vj:Landroid/widget/TextView;

    .line 335
    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vt:Landroid/widget/Spinner;

    .line 337
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gu()V

    .line 338
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->vU:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 340
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 341
    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vt:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vt:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vT:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 344
    const v0, 0x7f100245

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vm:Landroid/widget/Button;

    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vG:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    const v0, 0x7f100246

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vn:Landroid/widget/Button;

    .line 348
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vH:Lcom/android/settings_ext/fX;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const v0, 0x7f100247

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vI:Landroid/widget/Button;

    .line 351
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vI:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vJ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    const v0, 0x7f100248

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vK:Landroid/widget/Button;

    .line 354
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vK:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const v0, 0x7f100249

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vM:Landroid/widget/Button;

    .line 357
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vM:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    const v0, 0x7f10022d

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vp:Landroid/widget/Button;

    .line 360
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vp:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vQ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v0, 0x7f10024b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vq:Landroid/widget/Button;

    .line 362
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vq:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vR:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    const v0, 0x7f10024c

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vr:Landroid/widget/Button;

    .line 364
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vr:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vS:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    const v0, 0x7f10024e

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vo:Landroid/widget/Button;

    .line 366
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vO:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v0, 0x7f100250

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vs:Landroid/widget/Button;

    .line 369
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vs:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vP:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ext/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 371
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vs:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 377
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 378
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 379
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 380
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 382
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 384
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 387
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 390
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSlot(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->vz:Ljava/util/List;

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: mCellInfoValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vz:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/RadioInfo;->log(Ljava/lang/String;)V

    .line 392
    return-void

    .line 293
    :cond_1
    invoke-static {}, Lcom/android/settings_ext/eK;->fB()Lcom/android/settings_ext/eK;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/eK;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    .line 294
    iput v2, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    .line 295
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lu:Lmiui/telephony/SubscriptionInfo;

    goto/16 :goto_0

    .line 298
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lt:Lcom/android/internal/telephony/Phone;

    .line 299
    iput v3, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/RadioInfo;->lu:Lmiui/telephony/SubscriptionInfo;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 446
    const v0, 0x7f09008a

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vA:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 448
    const/4 v0, 0x2

    const v1, 0x7f09008b

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vB:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 450
    const/4 v0, 0x3

    const v1, 0x7f09008c

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vC:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 456
    const/4 v0, 0x5

    const v1, 0x7f090a34

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/RadioInfo;->vF:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 458
    return v2
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 431
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 433
    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/RadioInfo;->log(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 436
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->lv:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 437
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 464
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 465
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v3, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v3}, Lmiui/telephony/TelephonyManager;->getDataStateForSlot(I)I

    move-result v0

    .line 468
    packed-switch v0, :pswitch_data_0

    .line 477
    :pswitch_0
    const/4 v0, 0x0

    .line 480
    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 481
    return v1

    .line 471
    :pswitch_1
    const v0, 0x7f090a34

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    .line 472
    goto :goto_0

    .line 474
    :pswitch_2
    const v0, 0x7f090a33

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    .line 475
    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 396
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 398
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->updatePhoneState()V

    .line 399
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->fZ()V

    .line 400
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->ga()V

    .line 401
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gb()V

    .line 402
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gc()V

    .line 403
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getCellLocationForSlot(I)Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/RadioInfo;->a(Landroid/telephony/CellLocation;)V

    .line 404
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gd()V

    .line 405
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gg()V

    .line 406
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gh()V

    .line 407
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->fW()V

    .line 408
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->fX()V

    .line 409
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gp()V

    .line 410
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gr()V

    .line 411
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gt()V

    .line 412
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->gf()V

    .line 413
    invoke-direct {p0}, Lcom/android/settings_ext/RadioInfo;->fY()V

    .line 415
    const-string v0, "onResume: register phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/RadioInfo;->log(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo;->aa:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 418
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/RadioInfo;->mSlotId:I

    iget-object v2, p0, Lcom/android/settings_ext/RadioInfo;->lv:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x25dc

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 427
    return-void
.end method
