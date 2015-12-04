.class public Lcom/miui/fmservice/FmSharedPreferences;
.super Ljava/lang/Object;
.source "FmSharedPreferences.java"


# static fields
.field private static LAST_AF_JUMP_VALUE:Ljava/lang/String;

.field private static mAFAutoSwitch:Z

.field private static mCountry:I

.field private static mFMConfiguration:Lqcom/fmradio/FmConfig;

.field private static mFrequencyBand_Stepsize:I

.field private static mListIndex:I

.field private static mNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRecordDuration:I

.field private static mTunedFrequency:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "last_af_jump_value"

    sput-object v0, Lcom/miui/fmservice/FmSharedPreferences;->LAST_AF_JUMP_VALUE:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mNameMap:Ljava/util/Map;

    .line 98
    const v0, 0x17f34

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mTunedFrequency:I

    .line 99
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    .line 101
    const/16 v0, 0x8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mCountry:I

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/fmservice/FmSharedPreferences;->mAFAutoSwitch:Z

    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mRecordDuration:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmservice/FmSharedPreferences;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lqcom/fmradio/FmConfig;

    invoke-direct {v0}, Lqcom/fmradio/FmConfig;-><init>()V

    sput-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    .line 108
    invoke-virtual {p0}, Lcom/miui/fmservice/FmSharedPreferences;->Load()V

    .line 109
    return-void
.end method

.method public static getAutoAFSwitch()Z
    .locals 1

    .prologue
    .line 679
    sget-boolean v0, Lcom/miui/fmservice/FmSharedPreferences;->mAFAutoSwitch:Z

    return v0
.end method

.method public static getFMConfiguration()Lqcom/fmradio/FmConfig;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    return-object v0
.end method

.method public static isRBDSStd()Z
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCountry(I)V
    .locals 7
    .param p0, "nCountryCode"    # I

    .prologue
    const/16 v6, 0x32

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 341
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 342
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 343
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 344
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 345
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x155cc

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 346
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a5e0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 348
    packed-switch p0, :pswitch_data_0

    .line 630
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid: countryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/16 p0, 0x8

    .line 634
    :goto_0
    sput p0, Lcom/miui/fmservice/FmSharedPreferences;->mCountry:I

    .line 635
    const-string v0, "Fm:FmSharedPreferences"

    const-string v1, "====================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Country     :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioBand   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getRadioBand()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emphasis    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getEmphasis()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChSpacing   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RdsStd      :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LowerLimit  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v0, "Fm:FmSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpperLimit  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v0, "Fm:FmSharedPreferences"

    const-string v1, "====================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 353
    :pswitch_0
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 354
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 355
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 356
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 357
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x155cc

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 358
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 359
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 365
    :pswitch_1
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 372
    :pswitch_2
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 373
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 374
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 375
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x128e0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 376
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 377
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 383
    :pswitch_3
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 384
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 385
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 386
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 387
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a5e0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 388
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 396
    :pswitch_4
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15694

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 397
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 403
    :pswitch_5
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 404
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 410
    :pswitch_6
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 416
    :pswitch_7
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 417
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 418
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x156f8

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 419
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a5e0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 420
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 426
    :pswitch_8
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x153d8

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 427
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 433
    :pswitch_9
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 439
    :pswitch_a
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 440
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 441
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 447
    :pswitch_b
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 453
    :pswitch_c
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 461
    :pswitch_d
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 462
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 463
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 469
    :pswitch_e
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 475
    :pswitch_f
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x16378

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 476
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x19fa0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 477
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 483
    :pswitch_10
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 484
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 485
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 491
    :pswitch_11
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 492
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 493
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 499
    :pswitch_12
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 500
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 501
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 502
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 508
    :pswitch_13
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x155cc

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 509
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 515
    :pswitch_14
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 516
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 517
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 518
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 519
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15824

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 520
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 521
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 527
    :pswitch_15
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 533
    :pswitch_16
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x157c0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 534
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a1f8

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 535
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 541
    :pswitch_17
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 547
    :pswitch_18
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 548
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 549
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x157c0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 550
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 556
    :pswitch_19
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v4}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 557
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v5}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 558
    sput v6, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 564
    :pswitch_1a
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 570
    :pswitch_1b
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x157c0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 571
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 577
    :pswitch_1c
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 583
    :pswitch_1d
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 589
    :pswitch_1e
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 595
    :pswitch_1f
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 601
    :pswitch_20
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 607
    :pswitch_21
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 613
    :pswitch_22
    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 619
    :pswitch_23
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRadioBand(I)V

    .line 620
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setChSpacing(I)V

    .line 621
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setEmphasis(I)V

    .line 622
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    invoke-virtual {v0, v3}, Lqcom/fmradio/FmConfig;->setRdsStd(I)V

    .line 623
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x15824

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setLowerLimit(I)V

    .line 624
    sget-object v0, Lcom/miui/fmservice/FmSharedPreferences;->mFMConfiguration:Lqcom/fmradio/FmConfig;

    const v1, 0x1a57c

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmConfig;->setUpperLimit(I)V

    .line 625
    const/16 v0, 0xc8

    sput v0, Lcom/miui/fmservice/FmSharedPreferences;->mFrequencyBand_Stepsize:I

    goto/16 :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public Load()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    const-string v2, "Fm:FmSharedPreferences"

    const-string v3, "Load preferences "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lcom/miui/fmservice/FmSharedPreferences;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 153
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/miui/fmservice/FmSharedPreferences;->mContext:Landroid/content/Context;

    const-string v3, "fmradio_prefs"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 139
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "last_frequency"

    const v3, 0x17f34

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mTunedFrequency:I

    .line 140
    const-string v2, "last_record_duration"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mRecordDuration:I

    .line 141
    sget-object v2, Lcom/miui/fmservice/FmSharedPreferences;->LAST_AF_JUMP_VALUE:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/fmservice/FmSharedPreferences;->mAFAutoSwitch:Z

    .line 143
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "region":Ljava/lang/String;
    const-string v2, "MY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    const/16 v2, 0x24

    invoke-static {v2}, Lcom/miui/fmservice/FmSharedPreferences;->setCountry(I)V

    .line 152
    :goto_1
    const-string v2, "last_list_index"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/miui/fmservice/FmSharedPreferences;->mListIndex:I

    goto :goto_0

    .line 146
    :cond_1
    const-string v2, "BR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/miui/fmservice/FmSharedPreferences;->setCountry(I)V

    goto :goto_1

    .line 149
    :cond_2
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/miui/fmservice/FmSharedPreferences;->setCountry(I)V

    goto :goto_1
.end method
