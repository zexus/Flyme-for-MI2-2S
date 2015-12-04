.class public Lcom/miui/fmradio/FmActivity;
.super Lmiui/app/Activity;
.source "FmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FmActivity$EditStationDialog;,
        Lcom/miui/fmradio/FmActivity$SleepModeDialog;,
        Lcom/miui/fmradio/FmActivity$DonotSupportDialog;,
        Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBtnList:Landroid/widget/ImageButton;

.field private mBtnMenu:Landroid/widget/ImageButton;

.field private mBtnPower:Landroid/widget/ImageButton;

.field private mBtnPowerLarge:Landroid/widget/ImageButton;

.field private mBtnScan:Landroid/widget/ImageButton;

.field private mBtnSeekB:Landroid/widget/ImageButton;

.field private mBtnSeekF:Landroid/widget/ImageButton;

.field private mFltOn:Landroid/widget/FrameLayout;

.field private mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

.field private mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mIsLaunchFromCreate:Z

.field private mLltControl:Landroid/widget/FrameLayout;

.field private mLltFreq:Landroid/widget/LinearLayout;

.field private mLltOff:Landroid/widget/LinearLayout;

.field private mLltStates:Landroid/widget/LinearLayout;

.field private mLocalServiceCallback:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

.field private mLockSettings:Landroid/security/ChooseLockSettingsHelper;

.field private mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

.field private mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

.field private mRecordTimer:Landroid/widget/Chronometer;

.field private mService:Lcom/miui/fmradio/IFmLocalService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mToast:Landroid/widget/Toast;

.field private mTxtDivider:Landroid/widget/TextView;

.field private mTxtFreq:Landroid/widget/TextView;

.field private mTxtFreqRep:Landroid/widget/TextView;

.field private mTxtLabel:Landroid/widget/TextView;

.field private mTxtLabelOff:Landroid/widget/TextView;

.field private mTxtSleep:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 93
    new-instance v0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;-><init>(Lcom/miui/fmradio/FmActivity;Lcom/miui/fmradio/FmActivity$1;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLocalServiceCallback:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    .line 729
    new-instance v0, Lcom/miui/fmradio/FmActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmActivity$5;-><init>(Lcom/miui/fmradio/FmActivity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 759
    new-instance v0, Lcom/miui/fmradio/FmActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmActivity$6;-><init>(Lcom/miui/fmradio/FmActivity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mHandler:Landroid/os/Handler;

    .line 841
    new-instance v0, Lcom/miui/fmradio/FmActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmActivity$7;-><init>(Lcom/miui/fmradio/FmActivity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    .line 1169
    new-instance v0, Lcom/miui/fmradio/FmActivity$8;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmActivity$8;-><init>(Lcom/miui/fmradio/FmActivity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/fmradio/FmActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnPower:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/fmradio/FmActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmActivity;->doAnimation(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/fmradio/FmActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/fmradio/FmActivity;->mIsLaunchFromCreate:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/miui/fmradio/FmActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/miui/fmradio/FmActivity;->mIsLaunchFromCreate:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/fmradio/FmActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/fmradio/FmActivity;->showDonotSupportDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/FrequencyPicker;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/fmradio/FmActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/fmradio/FmActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/fmradio/FmActivity;->unbindService()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/fmradio/FmActivity;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/fmradio/FmActivity;->setSleepMode(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/fmradio/FmActivity;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/fmradio/FmActivity;->saveStation(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/fmradio/FmActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnMenu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/fmradio/FmActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/fmradio/FmActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreqRep:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/fmradio/FmActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/fmradio/FmActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/fmradio/FmActivity;Lcom/miui/fmradio/IFmLocalService;)Lcom/miui/fmradio/IFmLocalService;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;
    .param p1, "x1"    # Lcom/miui/fmradio/IFmLocalService;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLocalServiceCallback:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/fmradio/FmActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmActivity;->updateUi(I)V

    return-void
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 715
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/fmradio/FmLocalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 716
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 717
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/fmradio/FmActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    const-string v1, "Fm:FmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    return-void
.end method

.method private doAnimation(I)V
    .locals 5
    .param p1, "animType"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 617
    packed-switch p1, :pswitch_data_0

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 620
    :pswitch_0
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    if-ne p1, v4, :cond_1

    const v0, 0x7f04000f

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 621
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabelOff:Landroid/widget/TextView;

    if-ne p1, v4, :cond_2

    const v0, 0x7f04000b

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 622
    if-ne p1, v4, :cond_3

    .line 623
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnPower:Landroid/widget/ImageButton;

    const/high16 v1, 0x7f040000

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 624
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltFreq:Landroid/widget/LinearLayout;

    const v1, 0x7f040001

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 625
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnMenu:Landroid/widget/ImageButton;

    const v1, 0x7f040002

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 626
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltOff:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabelOff:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltControl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 638
    :goto_3
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnPower:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 639
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 640
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mLltOff:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_4

    const v0, 0x7f040005

    :goto_4
    new-instance v2, Lcom/miui/fmradio/FmActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/fmradio/FmActivity$2;-><init>(Lcom/miui/fmradio/FmActivity;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 620
    :cond_1
    const v0, 0x7f04000e

    goto :goto_1

    .line 621
    :cond_2
    const v0, 0x7f04000a

    goto :goto_2

    .line 631
    :cond_3
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltControl:Landroid/widget/FrameLayout;

    const v1, 0x7f040003

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 632
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltOff:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabelOff:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltControl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 640
    :cond_4
    const v0, 0x7f040004

    goto :goto_4

    .line 651
    :pswitch_1
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v0, v3}, Lcom/miui/fmradio/FrequencyPicker;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 654
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    :cond_5
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreqRep:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreq:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreq:Landroid/widget/TextView;

    const v1, 0x7f040006

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 659
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    const v1, 0x7f040008

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 660
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    const v1, 0x7f04000d

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 661
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltStates:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltStates:Landroid/widget/LinearLayout;

    const v1, 0x7f040010

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 667
    :pswitch_2
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v0, v2}, Lcom/miui/fmradio/FrequencyPicker;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreq:Landroid/widget/TextView;

    const v1, 0x7f040007

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 671
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    const v1, 0x7f040009

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    .line 672
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    const v1, 0x7f04000c

    new-instance v2, Lcom/miui/fmradio/FmActivity$3;

    invoke-direct {v2, p0}, Lcom/miui/fmradio/FmActivity$3;-><init>(Lcom/miui/fmradio/FmActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 680
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltStates:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltStates:Landroid/widget/LinearLayout;

    const v1, 0x7f040011

    invoke-direct {p0, v0, v1}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initPadUI()V
    .locals 7

    .prologue
    .line 207
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 208
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0d0010

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 209
    .local v0, "fl":Landroid/widget/FrameLayout;
    const v4, 0x7f030003

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 211
    invoke-virtual {p0}, Lcom/miui/fmradio/FmActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 212
    .local v1, "fm":Landroid/app/FragmentManager;
    sget-object v4, Lcom/miui/fmradio/FmStationListFragment;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/miui/fmradio/FmStationListFragment;

    iput-object v4, p0, Lcom/miui/fmradio/FmActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    .line 213
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-nez v4, :cond_0

    .line 214
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 215
    .local v2, "ft":Landroid/app/FragmentTransaction;
    new-instance v4, Lcom/miui/fmradio/FmStationListFragment;

    invoke-direct {v4}, Lcom/miui/fmradio/FmStationListFragment;-><init>()V

    iput-object v4, p0, Lcom/miui/fmradio/FmActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    .line 216
    const v4, 0x7f0d0013

    iget-object v5, p0, Lcom/miui/fmradio/FmActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    sget-object v6, Lcom/miui/fmradio/FmStationListFragment;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 217
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 219
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    iget-object v5, p0, Lcom/miui/fmradio/FmActivity;->mOnStationItemClickListener:Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;

    invoke-virtual {v4, v5}, Lcom/miui/fmradio/FmStationListFragment;->setOnStationItemClickListener(Lcom/miui/fmradio/FmStationListFragment$OnStationItemClickListener;)V

    .line 221
    const v4, 0x7f0d0016

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    .line 222
    const v4, 0x7f0d0014

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    .line 223
    const v4, 0x7f0d0015

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/miui/fmradio/FmActivity;->mBtnScan:Landroid/widget/ImageButton;

    .line 225
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mBtnScan:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/miui/fmradio/FrequencyPicker;->setVisibility(I)V

    .line 230
    return-void
.end method

.method private initPhoneUI()V
    .locals 3

    .prologue
    .line 233
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 234
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d0010

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 235
    .local v0, "fl":Landroid/widget/FrameLayout;
    const v2, 0x7f030004

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 237
    const v2, 0x7f0d0016

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    .line 238
    const v2, 0x7f0d0014

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    .line 239
    const v2, 0x7f0d0017

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/miui/fmradio/FmActivity;->mBtnList:Landroid/widget/ImageButton;

    .line 241
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity;->mBtnList:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 152
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 154
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnPower:Landroid/widget/ImageButton;

    .line 155
    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    .line 157
    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreq:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0d0004

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreqRep:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtSleep:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0d000b

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtDivider:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mRecordTimer:Landroid/widget/Chronometer;

    .line 162
    const v0, 0x7f0d0006

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltOff:Landroid/widget/LinearLayout;

    .line 164
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mFltOn:Landroid/widget/FrameLayout;

    .line 165
    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltControl:Landroid/widget/FrameLayout;

    .line 166
    const v0, 0x7f0d0003

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltFreq:Landroid/widget/LinearLayout;

    .line 167
    const v0, 0x7f0d0008

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/FrequencyPicker;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    .line 168
    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabelOff:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0d0007

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnMenu:Landroid/widget/ImageButton;

    .line 170
    const v0, 0x7f0d0009

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLltStates:Landroid/widget/LinearLayout;

    .line 172
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnPower:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mBtnMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FrequencyPicker;->setFrequency(I)V

    .line 177
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v0, p0}, Lcom/miui/fmradio/FrequencyPicker;->setFrequencyChangListener(Lcom/miui/fmradio/FrequencyPicker$FrequencyChangedListener;)V

    .line 179
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreq:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fontnumber.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 180
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreqRep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fontnumber.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 182
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreq:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreqRep:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v0, p0}, Lcom/miui/fmradio/FrequencyPicker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mFltOn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/miui/fmradio/FmActivity;->initPadUI()V

    .line 193
    :goto_0
    new-instance v0, Lcom/miui/fmradio/FmActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmActivity$1;-><init>(Lcom/miui/fmradio/FmActivity;)V

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 204
    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmActivity;->initPhoneUI()V

    goto :goto_0
.end method

.method private requestUpdateUi(I)V
    .locals 3
    .param p1, "animType"    # I

    .prologue
    .line 524
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 525
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 526
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 527
    return-void
.end method

.method private saveStation(ILjava/lang/String;I)V
    .locals 1
    .param p1, "newFreq"    # I
    .param p2, "newLabel"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 781
    invoke-static {p0, p1, p2, p3}, Lcom/miui/fmradio/StationItemHelper;->addOrUpdateSingleStation(Landroid/content/Context;ILjava/lang/String;I)V

    .line 782
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const v0, 0x7f0a002c

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmActivity;->showToast(I)V

    .line 783
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V

    .line 784
    return-void

    .line 782
    :cond_0
    const v0, 0x7f0a002d

    goto :goto_0
.end method

.method private setSleepMode(Ljava/lang/String;J)V
    .locals 4
    .param p1, "delayTime"    # Ljava/lang/String;
    .param p2, "seconds"    # J

    .prologue
    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    const v1, 0x7f0a0018

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/fmradio/FmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/fmradio/FmActivity;->showToast(Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    invoke-interface {v1, v2, v3}, Lcom/miui/fmradio/IFmLocalService;->setDelayedStop(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmActivity"

    const-string v2, "setDelayedStop failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showDonotSupportDialog()V
    .locals 3

    .prologue
    .line 776
    new-instance v0, Lcom/miui/fmradio/FmActivity$DonotSupportDialog;

    invoke-direct {v0}, Lcom/miui/fmradio/FmActivity$DonotSupportDialog;-><init>()V

    .line 777
    .local v0, "d":Lcom/miui/fmradio/FmActivity$DonotSupportDialog;
    invoke-virtual {p0}, Lcom/miui/fmradio/FmActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmActivity$DonotSupportDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/FmActivity$DonotSupportDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method private showSleepDlg()V
    .locals 3

    .prologue
    .line 804
    new-instance v0, Lcom/miui/fmradio/FmActivity$SleepModeDialog;

    invoke-direct {v0}, Lcom/miui/fmradio/FmActivity$SleepModeDialog;-><init>()V

    .line 805
    .local v0, "d":Lcom/miui/fmradio/FmActivity$SleepModeDialog;
    invoke-virtual {p0}, Lcom/miui/fmradio/FmActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmActivity$SleepModeDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/FmActivity$SleepModeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method private showStationSaveDialog(Lcom/miui/fmradio/StationItem;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/fmradio/StationItem;

    .prologue
    .line 787
    new-instance v0, Lcom/miui/fmradio/FmActivity$EditStationDialog;

    invoke-direct {v0}, Lcom/miui/fmradio/FmActivity$EditStationDialog;-><init>()V

    .line 788
    .local v0, "d":Lcom/miui/fmradio/FmActivity$EditStationDialog;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/fmradio/FmActivity$EditStationDialog;->setEditParams(ZZLcom/miui/fmradio/StationItem;)V

    .line 789
    invoke-virtual {p0}, Lcom/miui/fmradio/FmActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FmActivity$EditStationDialog;->FRAG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/fmradio/FmActivity$EditStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method private showToast(I)V
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 830
    invoke-virtual {p0, p1}, Lcom/miui/fmradio/FmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmActivity;->showToast(Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 834
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 837
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mToast:Landroid/widget/Toast;

    .line 838
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 839
    return-void
.end method

.method private startOneShotViewAnimation(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animId"    # I

    .prologue
    .line 689
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/fmradio/FmActivity;->startOneShotViewAnimation(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 690
    return-void
.end method

.method private startOneShotViewAnimation(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animId"    # I
    .param p3, "endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 693
    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 694
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/miui/fmradio/FmActivity$4;

    invoke-direct {v1, p0, p3, p1}, Lcom/miui/fmradio/FmActivity$4;-><init>(Lcom/miui/fmradio/FmActivity;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 711
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 712
    return-void
.end method

.method private unbindService()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    .line 727
    :cond_0
    return-void
.end method

.method private updateUi(I)V
    .locals 14
    .param p1, "animType"    # I

    .prologue
    const/4 v12, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 530
    const/4 v2, 0x0

    .line 531
    .local v2, "isFmOn":Z
    sget v1, Lcom/miui/fmservice/FmServiceUtils;->MIN_FREQUENCY:I

    .line 532
    .local v1, "freq":I
    const/4 v3, 0x0

    .line 533
    .local v3, "isInSleepMode":Z
    const/4 v4, 0x0

    .line 534
    .local v4, "isRecording":Z
    const-wide/16 v6, 0x0

    .line 535
    .local v6, "recordingTimeInMillis":J
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v8, :cond_0

    .line 537
    :try_start_0
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v2

    .line 538
    if-eqz v2, :cond_0

    .line 539
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->getCurrentFrequency()I

    move-result v1

    .line 540
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isInSleepMode()Z

    move-result v3

    .line 541
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isRecording()Z

    move-result v4

    .line 542
    if-eqz v4, :cond_0

    .line 543
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->getRecordingTimeInMillis()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 551
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmActivity;->doAnimation(I)V

    .line 552
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v8, :cond_d

    if-eqz v2, :cond_d

    .line 553
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 554
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 556
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mFltOn:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 557
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreq:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mTxtFreqRep:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    if-eqz v3, :cond_6

    .line 561
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mTxtSleep:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    :goto_1
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v8}, Lcom/miui/fmradio/FrequencyPicker;->getFrequency()I

    move-result v8

    if-eq v8, v1, :cond_1

    .line 567
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v8, v1}, Lcom/miui/fmradio/FrequencyPicker;->setFrequency(I)V

    .line 570
    :cond_1
    invoke-static {p0, v1}, Lcom/miui/fmradio/StationItemHelper;->getStationItemByFreq(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;

    move-result-object v5

    .line 572
    .local v5, "item":Lcom/miui/fmradio/StationItem;
    if-eqz v4, :cond_7

    .line 573
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Landroid/widget/Chronometer;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_2

    .line 574
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v8, v12, v13}, Landroid/widget/Chronometer;->setBase(J)V

    .line 575
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v8, v9}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 576
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Landroid/widget/Chronometer;->start()V

    .line 583
    :cond_2
    :goto_2
    sget-boolean v8, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;

    invoke-virtual {v8}, Lcom/miui/fmradio/FrequencyPicker;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_b

    .line 584
    :cond_3
    if-eqz v5, :cond_8

    .line 585
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    iget-object v11, v5, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    :goto_3
    if-eqz v3, :cond_9

    .line 593
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mTxtSleep:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    :goto_4
    iget-object v11, p0, Lcom/miui/fmradio/FmActivity;->mTxtDivider:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    move v8, v9

    :goto_5
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    if-nez v3, :cond_4

    if-eqz v4, :cond_5

    .line 601
    :cond_4
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mLltStates:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 608
    :cond_5
    :goto_6
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mLltOff:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 614
    .end local v5    # "item":Lcom/miui/fmradio/StationItem;
    :goto_7
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "Fm:FmActivity"

    const-string v11, "updateUi failed"

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 563
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mTxtSleep:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 579
    .restart local v5    # "item":Lcom/miui/fmradio/StationItem;
    :cond_7
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Landroid/widget/Chronometer;->stop()V

    .line 580
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v8, v10}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_2

    .line 588
    :cond_8
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 595
    :cond_9
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mTxtSleep:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_a
    move v8, v10

    .line 598
    goto :goto_5

    .line 604
    :cond_b
    iget-object v9, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    if-nez v5, :cond_c

    const-string v8, ""

    :goto_8
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mLltStates:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 604
    :cond_c
    iget-object v8, v5, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    goto :goto_8

    .line 610
    .end local v5    # "item":Lcom/miui/fmradio/StationItem;
    :cond_d
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mLltOff:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 611
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekB:Landroid/widget/ImageButton;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 612
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mBtnSeekF:Landroid/widget/ImageButton;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_7
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 131
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 132
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 133
    const-string v2, "extra_key_tune_freq"

    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, "freq":I
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v2, :cond_0

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v2}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v2, v1}, Lcom/miui/fmradio/IFmLocalService;->tuneFm(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "freq":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    return-void

    .line 139
    .restart local v1    # "freq":I
    :cond_1
    :try_start_1
    invoke-static {p0, v1}, Lcom/miui/fmradio/StationItemHelper;->setCurrentFrequency(Landroid/content/Context;I)V

    .line 140
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v2, v1}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmActivity"

    const-string v3, "Call service failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 272
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0d0002

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0d0017

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0d000e

    if-eq v3, v4, :cond_1

    .line 274
    const-string v3, "Fm:FmActivity"

    const-string v4, "FmService not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 281
    :sswitch_0
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v3, v5, v6}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 282
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-nez v3, :cond_2

    .line 283
    invoke-direct {p0}, Lcom/miui/fmradio/FmActivity;->bindService()V

    goto :goto_0

    .line 286
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalService;->turnFmOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Fm:FmActivity"

    const-string v4, "Turn fm on or off failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v1

    .line 290
    .local v1, "freq":I
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v3, v1}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 298
    .end local v1    # "freq":I
    :sswitch_1
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v3, v5, v6}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 300
    :try_start_2
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/miui/fmradio/IFmLocalService;->seekFm(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 303
    :catch_1
    move-exception v0

    .line 304
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "Fm:FmActivity"

    const-string v4, "Seek fm backward failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 308
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_2
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v3, v5, v6}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 310
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/miui/fmradio/IFmLocalService;->seekFm(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 313
    :catch_2
    move-exception v0

    .line 314
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "Fm:FmActivity"

    const-string v4, "Seek fm forward failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_3
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v3, v5, v6}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 319
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/fmradio/FmStationListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2, v5}, Lcom/miui/fmradio/FmActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 323
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_4
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/miui/fmradio/FmActivity;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto/16 :goto_0

    .line 326
    :sswitch_5
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/miui/fmradio/FmActivity;->mFmStationListFragment:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v3}, Lcom/miui/fmradio/FmStationListFragment;->scanOption()V

    goto/16 :goto_0

    .line 278
    :sswitch_data_0
    .sparse-switch
        0x7f0d0002 -> :sswitch_0
        0x7f0d0007 -> :sswitch_4
        0x7f0d000e -> :sswitch_0
        0x7f0d0014 -> :sswitch_1
        0x7f0d0015 -> :sswitch_5
        0x7f0d0016 -> :sswitch_2
        0x7f0d0017 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 105
    const-string v0, "Fm:FmActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmActivity;->setRequestedOrientation(I)V

    .line 111
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->setVolumeControlStream(I)V

    .line 112
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity;->setContentView(I)V

    .line 113
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p0, v2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 114
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmActivity;->mLockSettings:Landroid/security/ChooseLockSettingsHelper;

    .line 116
    invoke-direct {p0}, Lcom/miui/fmradio/FmActivity;->initUI()V

    .line 117
    iput-boolean v2, p0, Lcom/miui/fmradio/FmActivity;->mIsLaunchFromCreate:Z

    .line 118
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    invoke-static {v0}, Lcom/miui/fmradio/StationItemHelper;->registerStationListChangeListener(Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;)V

    .line 119
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/miui/fmradio/FmActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 256
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 258
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v1, :cond_0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    iget-object v2, p0, Lcom/miui/fmradio/FmActivity;->mLocalServiceCallback:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmActivity;->unbindService()V

    .line 266
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mOnStationListChangeListener:Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;

    invoke-static {v1}, Lcom/miui/fmradio/StationItemHelper;->unregisterStationListChangeListener(Lcom/miui/fmradio/StationItemHelper$OnStationListChangeListener;)V

    .line 267
    invoke-static {}, Lcom/miui/fmradio/StationItemHelper;->clearStationItems()V

    .line 268
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmActivity"

    const-string v2, "unregisterFmStateListener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFrequencyChanged(I)V
    .locals 3
    .param p1, "freq"    # I

    .prologue
    .line 820
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v1, :cond_0

    .line 822
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v1, p1}, Lcom/miui/fmradio/IFmLocalService;->tuneFm(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmActivity"

    const-string v2, "tune fm failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 425
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 520
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 428
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/miui/fmradio/FmActivity;->showSleepDlg()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmActivity"

    const-string v5, "showSleepDlg failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 436
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    .line 438
    :try_start_1
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->cancelDelayedStop()V

    .line 439
    const v4, 0x7f0a0019

    invoke-direct {p0, v4}, Lcom/miui/fmradio/FmActivity;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 440
    :catch_1
    move-exception v0

    .line 441
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmActivity"

    const-string v5, "Cancel sleep mode failed."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    .line 447
    const/4 v1, 0x0

    .line 449
    .local v1, "freq":I
    :try_start_2
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->getCurrentFrequency()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 453
    :goto_1
    invoke-static {p0, v1}, Lcom/miui/fmradio/StationItemHelper;->getStationItemByFreq(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;

    move-result-object v3

    .line 454
    .local v3, "stationItem":Lcom/miui/fmradio/StationItem;
    if-nez v3, :cond_1

    .line 455
    new-instance v4, Lcom/miui/fmradio/StationItem;

    const v5, 0x7f0a0020

    invoke-virtual {p0, v5}, Lcom/miui/fmradio/FmActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/miui/fmradio/StationItem;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/miui/fmradio/FmActivity;->showStationSaveDialog(Lcom/miui/fmradio/StationItem;)V

    goto :goto_0

    .line 450
    .end local v3    # "stationItem":Lcom/miui/fmradio/StationItem;
    :catch_2
    move-exception v0

    .line 451
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmActivity"

    const-string v5, "Get current frequency failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 458
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "stationItem":Lcom/miui/fmradio/StationItem;
    :cond_1
    invoke-direct {p0, v3}, Lcom/miui/fmradio/FmActivity;->showStationSaveDialog(Lcom/miui/fmradio/StationItem;)V

    goto :goto_0

    .line 463
    .end local v1    # "freq":I
    .end local v3    # "stationItem":Lcom/miui/fmradio/StationItem;
    :pswitch_3
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    .line 465
    :try_start_3
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->startRecord()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 466
    :catch_3
    move-exception v0

    .line 467
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmActivity"

    const-string v5, "StartRecord failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 472
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_4
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    .line 474
    :try_start_4
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->stopRecord()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 475
    :catch_4
    move-exception v0

    .line 476
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmActivity"

    const-string v5, "Stop record failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 481
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 482
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.android.soundrecorder"

    const-string v5, "com.android.soundrecorder.RecordPreviewActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const/high16 v4, 0x80000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v4, "extra_dirpath"

    sget-object v5, Lcom/miui/fmradio/FmLocalService;->RECORD_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v4, "extra_rectype"

    const-string v5, "type_fm"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 491
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_6
    :try_start_5
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 492
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->turnFmOff()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 497
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/miui/fmradio/FmActivity;->finish()V

    goto/16 :goto_0

    .line 494
    :catch_5
    move-exception v0

    .line 495
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmActivity"

    const-string v5, "Turn fm off failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 501
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_7
    :try_start_6
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/miui/fmradio/IFmLocalService;->setAudioPath(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 504
    :catch_6
    move-exception v0

    .line 505
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmActivity"

    const-string v5, "Switch to headset failed"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 510
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_8
    :try_start_7
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v4}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 511
    iget-object v4, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/miui/fmradio/IFmLocalService;->setAudioPath(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 513
    :catch_7
    move-exception v0

    .line 514
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmActivity"

    const-string v5, "Switch to headset failed"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x7f0d0027
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 343
    const/4 v3, 0x0

    .line 344
    .local v3, "isFmOn":Z
    const/4 v4, 0x0

    .line 345
    .local v4, "isInSleepMode":Z
    const/4 v5, 0x0

    .line 346
    .local v5, "isRecording":Z
    const/4 v0, 0x2

    .line 347
    .local v0, "audioPath":I
    sget v2, Lcom/miui/fmservice/FmServiceUtils;->MIN_FREQUENCY:I

    .line 348
    .local v2, "freq":I
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v8, :cond_0

    .line 350
    :try_start_0
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v3

    .line 351
    if-eqz v3, :cond_0

    .line 352
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isInSleepMode()Z

    move-result v4

    .line 353
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->isRecording()Z

    move-result v5

    .line 354
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->getCurrentFrequency()I

    move-result v2

    .line 355
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    invoke-interface {v8}, Lcom/miui/fmradio/IFmLocalService;->getAudioPath()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 362
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-eqz v8, :cond_1

    if-nez v3, :cond_2

    .line 363
    :cond_1
    const/4 v8, 0x0

    .line 420
    :goto_1
    return v8

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "Fm:FmActivity"

    const-string v9, "Update options menu failed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 366
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v8

    if-nez v8, :cond_5

    .line 367
    const v8, 0x7f0d0027

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 368
    const v8, 0x7f0d0028

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 379
    :goto_2
    if-eqz v4, :cond_7

    .line 380
    const v8, 0x7f0d0029

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 381
    const v8, 0x7f0d002a

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 387
    :goto_3
    sget-boolean v8, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v8, :cond_8

    .line 388
    const v8, 0x7f0d002c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 389
    const v8, 0x7f0d002d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 390
    const v8, 0x7f0d002e

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    :goto_4
    sget-boolean v8, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v8, :cond_3

    .line 401
    const v8, 0x7f0d002e

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 404
    :cond_3
    invoke-static {p0, v2}, Lcom/miui/fmradio/StationItemHelper;->getStationItemByFreq(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;

    move-result-object v6

    .line 405
    .local v6, "item":Lcom/miui/fmradio/StationItem;
    const v8, 0x7f0d002b

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 407
    .local v7, "saveMenu":Landroid/view/MenuItem;
    if-eqz v6, :cond_a

    iget v8, v6, Lcom/miui/fmradio/StationItem;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 408
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 416
    :goto_5
    iget-object v8, p0, Lcom/miui/fmradio/FmActivity;->mLockSettings:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 417
    const v8, 0x7f0d002c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 420
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 370
    .end local v6    # "item":Lcom/miui/fmradio/StationItem;
    .end local v7    # "saveMenu":Landroid/view/MenuItem;
    :cond_5
    const/4 v8, 0x2

    if-ne v0, v8, :cond_6

    .line 371
    const v8, 0x7f0d0028

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 372
    const v8, 0x7f0d0027

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 374
    :cond_6
    const v8, 0x7f0d0027

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 375
    const v8, 0x7f0d0028

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 383
    :cond_7
    const v8, 0x7f0d0029

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 384
    const v8, 0x7f0d002a

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 391
    :cond_8
    if-eqz v5, :cond_9

    .line 392
    const v8, 0x7f0d002c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 393
    const v8, 0x7f0d002d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 395
    :cond_9
    const v8, 0x7f0d002c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    const v8, 0x7f0d002d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 409
    .restart local v6    # "item":Lcom/miui/fmradio/StationItem;
    .restart local v7    # "saveMenu":Landroid/view/MenuItem;
    :cond_a
    if-eqz v6, :cond_b

    .line 410
    const v8, 0x7f0a0009

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 411
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 413
    :cond_b
    const v8, 0x7f0a0008

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 414
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 249
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/fmradio/FmActivity;->mIsLaunchFromCreate:Z

    if-nez v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/miui/fmradio/FmActivity;->bindService()V

    .line 252
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x2

    .line 810
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmActivity;->doAnimation(I)V

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 814
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 123
    invoke-super {p0, p1}, Lmiui/app/Activity;->onWindowFocusChanged(Z)V

    .line 124
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/fmradio/FmActivity;->mIsLaunchFromCreate:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/miui/fmradio/FmActivity;->bindService()V

    .line 127
    :cond_0
    return-void
.end method
