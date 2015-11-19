.class public Lmiui/telephony/SpnOverride;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# static fields
.field public static final EQ_OPERATOR_CM:Ljava/lang/String; = "46000"

.field public static final EQ_OPERATOR_CT:Ljava/lang/String; = "46003"

.field public static final EQ_OPERATOR_CU:Ljava/lang/String; = "46001"

.field static final LOG_TAG:Ljava/lang/String; = "SpnOverride"

.field public static final MCC_CHINA:Ljava/lang/String; = "460"

.field public static final MCC_NONE:Ljava/lang/String; = "000"

.field public static final MCC_TAIWAN:Ljava/lang/String; = "466"

.field private static final SETTING_PREFIX:Ljava/lang/String; = "MOBILE_OPERATOR_NAME_"

.field static final sInstance:Lmiui/telephony/SpnOverride;


# instance fields
.field private final mNumericEquivalencies:[Ljava/lang/String;

.field private final mNumericValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lmiui/telephony/SpnOverride;

    invoke-direct {v0}, Lmiui/telephony/SpnOverride;-><init>()V

    sput-object v0, Lmiui/telephony/SpnOverride;->sInstance:Lmiui/telephony/SpnOverride;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/system/R$array;->mobile_operator_numeric_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/SpnOverride;->mNumericValues:[Ljava/lang/String;

    .line 44
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/system/R$array;->mobile_operator_numeric_equivalencies:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/SpnOverride;->mNumericEquivalencies:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method private getFromSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOBILE_OPERATOR_NAME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmiui/telephony/SpnOverride;->mNumericValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 100
    iget-object v1, p0, Lmiui/telephony/SpnOverride;->mNumericValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 99
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getInstance()Lmiui/telephony/SpnOverride;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lmiui/telephony/SpnOverride;->sInstance:Lmiui/telephony/SpnOverride;

    return-object v0
.end method


# virtual methods
.method public containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lmiui/telephony/SpnOverride;->getIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/telephony/SpnOverride;->getFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lmiui/telephony/SpnOverride;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lmiui/telephony/SpnOverride;->mNumericEquivalencies:[Ljava/lang/String;

    aget-object p1, v1, v0

    .end local p1    # "carrier":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getIccOperatorNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 172
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lmiui/telephony/SpnOverride;->getFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 69
    .restart local v2    # "result":Ljava/lang/String;
    :cond_0
    const/4 v0, -0x1

    .line 70
    .local v0, "index":I
    if-eqz p2, :cond_1

    .line 71
    invoke-direct {p0, p2}, Lmiui/telephony/SpnOverride;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 73
    :cond_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 74
    invoke-direct {p0, p1}, Lmiui/telephony/SpnOverride;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 77
    :cond_2
    if-ltz v0, :cond_3

    .line 79
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiui/system/R$array;->mobile_operator_display_names:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "operatorNames":[Ljava/lang/String;
    :try_start_0
    aget-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v3

    .line 89
    .end local v1    # "operatorNames":[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isChineseIccOperator(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lmiui/telephony/SpnOverride;->getIccOperatorNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "iccOperatorNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIccOperator(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 141
    invoke-virtual {p0, p2}, Lmiui/telephony/SpnOverride;->getIccOperatorNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SpnOverride;->isIccOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIccOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0, p2}, Lmiui/telephony/SpnOverride;->getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIccOperatorEmpty(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lmiui/telephony/SpnOverride;->getIccOperatorNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
