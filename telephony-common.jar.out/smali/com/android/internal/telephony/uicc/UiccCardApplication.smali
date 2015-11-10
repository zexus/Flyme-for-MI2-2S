.class public Lcom/android/internal/telephony/uicc/UiccCardApplication;
.super Ljava/lang/Object;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCardApplication$2;
    }
.end annotation


# static fields
.field public static final AUTH_CONTEXT_EAP_AKA:I = 0x81

.field public static final AUTH_CONTEXT_EAP_SIM:I = 0x80

.field public static final AUTH_CONTEXT_UNDEFINED:I = -0x1

.field private static final DBG:Z = true

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0x5

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x7

.field private static final EVENT_CHANGE_PIN1_DONE:I = 0x2

.field private static final EVENT_CHANGE_PIN2_DONE:I = 0x3

.field private static final EVENT_PIN1_PUK1_DONE:I = 0x1

.field private static final EVENT_PIN2_PUK2_DONE:I = 0x8

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0x4

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "UiccCardApplication"


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field private mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

.field private mAuthContext:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIccFdnAvailable:Z

.field private mIccFdnEnabled:Z

.field private mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIccLockEnabled:Z

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private final mLock:Ljava/lang/Object;

.field private mPersoLockedRegistrants:Landroid/os/RegistrantList;

.field private mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field private mPin1Replaced:Z

.field private mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    .line 75
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    .line 84
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 85
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 86
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    .line 363
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating UiccApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 94
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 95
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I

    .line 97
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 98
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 99
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 100
    iget v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    .line 101
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 102
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 104
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 105
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 107
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 108
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    .line 113
    :cond_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 189
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 201
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 191
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 193
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/uicc/RuimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 195
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/uicc/UsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 197
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 199
    :pswitch_4
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 176
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 184
    :goto_0
    return-object v0

    .line 178
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_3

    .line 179
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/uicc/RuimRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 180
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_4

    .line 181
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 184
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 3
    .param p0, "appType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 600
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 610
    :pswitch_0
    const/4 v0, -0x1

    .line 614
    .local v0, "authContext":I
    :goto_0
    return v0

    .line 602
    .end local v0    # "authContext":I
    :pswitch_1
    const/16 v0, 0x80

    .line 603
    .restart local v0    # "authContext":I
    goto :goto_0

    .line 606
    .end local v0    # "authContext":I
    :pswitch_2
    const/16 v0, 0x81

    .line 607
    .restart local v0    # "authContext":I
    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 901
    const-string v0, "UiccCardApplication"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 905
    const-string v0, "UiccCardApplication"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method

.method private notifyPersoLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 4
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    const/4 v3, 0x0

    .line 555
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isPersoLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 562
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez p1, :cond_2

    .line 563
    const-string v1, "Notifying registrants: PERSO_LOCKED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 566
    :cond_2
    const-string v1, "Notifying 1 registrant: PERSO_LOCKED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_4

    .line 535
    :cond_3
    const-string v0, "Sanity check failed! APPSTATE is locked while PIN1 is not!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_4
    if-nez p1, :cond_5

    .line 540
    const-string v0, "Notifying registrants: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 543
    :cond_5
    const-string v0, "Notifying 1 registrant: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 544
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    const/4 v2, 0x0

    .line 500
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_3

    .line 507
    :cond_2
    const-string v0, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_3
    if-nez p1, :cond_4

    .line 512
    const-string v0, "Notifying registrants: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 515
    :cond_4
    const-string v0, "Notifying 1 registrant: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 516
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private onChangeFacilityLock(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 327
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 328
    const/4 v0, -0x1

    .line 330
    .local v0, "attemptsRemaining":I
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 331
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccLockEnabled= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 338
    :goto_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 339
    .local v1, "response":Landroid/os/Message;
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 340
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 341
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 342
    monitor-exit v3

    .line 343
    return-void

    .line 335
    .end local v1    # "response":Landroid/os/Message;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error change facility lock with exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onChangeFdnDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 247
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 248
    const/4 v0, -0x1

    .line 250
    .local v0, "attemptsRemaining":I
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 251
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 258
    :goto_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 259
    .local v1, "response":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 260
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 261
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 262
    monitor-exit v3

    .line 263
    return-void

    .line 255
    .end local v1    # "response":Landroid/os/Message;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error change facility fdn with exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 277
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 278
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 280
    monitor-exit v4

    .line 323
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 284
    .local v1, "ints":[I
    array-length v2, v1

    if-eqz v2, :cond_5

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query facility lock : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    aget v2, v1, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    .line 289
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    if-eqz v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 299
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardStatus$PinState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 316
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring: pin1state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 322
    :cond_3
    :goto_3
    monitor-exit v4

    goto :goto_0

    .end local v1    # "ints":[I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "ints":[I
    :cond_4
    move v2, v3

    .line 287
    goto :goto_1

    .line 301
    :pswitch_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    if-eqz v2, :cond_3

    .line 302
    const-string v2, "QUERY_FACILITY_LOCK:enabled GET_SIM_STATUS.Pin1:disabled. Fixme"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 310
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    if-nez v2, :cond_2

    .line 311
    const-string v2, "QUERY_FACILITY_LOCK:disabled GET_SIM_STATUS.Pin1:enabled. Fixme"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 320
    :cond_5
    const-string v2, "Bogus facility lock response"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 222
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 223
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 225
    monitor-exit v5

    .line 244
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 229
    .local v1, "result":[I
    array-length v2, v1

    if-eqz v2, :cond_3

    .line 231
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 232
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 233
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    .line 238
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility FDN : FDN service available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 243
    :goto_2
    monitor-exit v5

    goto :goto_0

    .end local v1    # "result":[I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 235
    .restart local v1    # "result":[I
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    aget v2, v1, v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 236
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    goto :goto_1

    :cond_2
    move v2, v4

    .line 235
    goto :goto_3

    .line 241
    :cond_3
    const-string v2, "Bogus facility lock response"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 349
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 350
    .local v2, "result":[I
    if-nez v2, :cond_0

    .line 351
    const/4 v0, -0x1

    .line 359
    :goto_0
    return v0

    .line 353
    :cond_0
    array-length v1, v2

    .line 354
    .local v1, "length":I
    const/4 v0, -0x1

    .line 355
    .local v0, "attemptsRemaining":I
    if-lez v1, :cond_1

    .line 356
    const/4 v3, 0x0

    aget v0, v2, v3

    .line 358
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsePinPukErrorResult: attemptsRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queryPin1State()V
    .locals 7

    .prologue
    .line 267
    const/4 v3, 0x7

    .line 270
    .local v3, "serviceClassX":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 273
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 871
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 872
    :try_start_0
    const-string v0, "changeIccFdnPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 875
    monitor-exit v1

    .line 876
    return-void

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 851
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    :try_start_0
    const-string v0, "changeIccLockPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 855
    monitor-exit v1

    .line 856
    return-void

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dispose()V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " being Disposed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 170
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 172
    monitor-exit v1

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccCardApplication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAppState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAppType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPersoSubState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAppLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPin1Replaced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPin1State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPin2State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccFdnEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDesiredFdnEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccLockEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDesiredPinLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccFh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDestroyed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mReadyRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mReadyRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPinLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPinLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 937
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPersoLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPersoLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 942
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 943
    return-void
.end method

.method public getAid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthContext()I
    .locals 2

    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I

    monitor-exit v1

    return v0

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFdnAvailable()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    .line 768
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 769
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    monitor-exit v1

    return v0

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    monitor-exit v1

    return-object v0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 3

    .prologue
    .line 882
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 3

    .prologue
    .line 891
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 893
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v1

    return-object v0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 2

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    monitor-exit v1

    return-object v0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    .prologue
    .line 634
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 635
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v0

    monitor-exit v1

    .line 638
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v1

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 2

    .prologue
    .line 573
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    monitor-exit v1

    return-object v0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 2

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    monitor-exit v1

    return-object v0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    return-object v0
.end method

.method public isPersoLocked()Z
    .locals 2

    .prologue
    .line 655
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 661
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 659
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method onRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 2
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 414
    if-nez p1, :cond_1

    .line 415
    const-string v0, "onRefresh received without input"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh for app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 427
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 430
    :pswitch_0
    const-string v0, "onRefresh: Setting app state to unknown"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method queryFdn()V
    .locals 7

    .prologue
    .line 210
    const/4 v3, 0x7

    .line 213
    .local v3, "serviceClassX":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 216
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 464
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 465
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 466
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 467
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 468
    monitor-exit v2

    .line 469
    return-void

    .line 468
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 481
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 482
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 483
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 484
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPersoLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 485
    monitor-exit v2

    .line 486
    return-void

    .line 485
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 439
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 440
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 441
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 442
    .local v1, "r":Landroid/os/Registrant;
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 444
    .local v2, "rH":Landroid/os/Handler;
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_0

    .line 445
    monitor-exit v4

    .line 452
    .end local v2    # "rH":Landroid/os/Handler;
    :goto_1
    return-void

    .line 440
    .restart local v2    # "rH":Landroid/os/Handler;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 448
    .end local v1    # "r":Landroid/os/Registrant;
    .end local v2    # "rH":Landroid/os/Handler;
    :cond_1
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 449
    .restart local v1    # "r":Landroid/os/Registrant;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 450
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 451
    monitor-exit v4

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 822
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 824
    const/16 v4, 0xf

    .line 829
    .local v4, "serviceClassX":I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 834
    monitor-exit v7

    .line 835
    return-void

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 795
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 797
    const/4 v4, 0x7

    .line 801
    .local v4, "serviceClassX":I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 806
    monitor-exit v7

    .line 807
    return-void

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 736
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Despersonalization: pin = **** , type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 738
    monitor-exit v1

    .line 739
    return-void

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 688
    monitor-exit v1

    .line 689
    return-void

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 724
    monitor-exit v1

    .line 725
    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 717
    monitor-exit v1

    .line 718
    return-void

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 728
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 731
    monitor-exit v1

    .line 732
    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 474
    monitor-exit v1

    .line 475
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForPersoLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 491
    monitor-exit v1

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 457
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 116
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 117
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 118
    const-string v3, "Application updated after destroyed! Fix me!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 119
    monitor-exit v4

    .line 162
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " update. New "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 123
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 124
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 126
    .local v1, "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 127
    .local v0, "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 128
    .local v2, "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 129
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I

    .line 130
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 131
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 132
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 133
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 134
    iget v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    .line 135
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 136
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 138
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v3, v1, :cond_3

    .line 139
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 141
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 142
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 145
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-eq v3, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isPersoLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPersoLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 150
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v0, :cond_6

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " changed state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v5, :cond_5

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    .line 158
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 159
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 161
    :cond_6
    monitor-exit v4

    goto/16 :goto_0

    .end local v0    # "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v1    # "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v2    # "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 134
    .restart local v0    # "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .restart local v1    # "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .restart local v2    # "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1
.end method
