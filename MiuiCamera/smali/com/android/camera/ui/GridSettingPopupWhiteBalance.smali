.class public Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingPopupWhiteBalance.java"


# static fields
.field private static sWhiteBalanceManual:Ljava/lang/String;

.field private static sWhiteBalanceMeasure:Ljava/lang/String;


# instance fields
.field private mChangedListener:Lcom/android/camera/ui/OnWheelChangedListener;

.field private mContentView:Landroid/view/View;

.field private mCurrentKValue:I

.field private mOnBackListener:Landroid/view/View$OnClickListener;

.field private mScrolledListener:Lcom/android/camera/ui/OnWheelScrollListener;

.field private mWheelScrolled:Z

.field private mWheelView:Lcom/android/camera/ui/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelScrolled:Z

    .line 124
    new-instance v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mOnBackListener:Landroid/view/View$OnClickListener;

    .line 135
    new-instance v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$2;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mScrolledListener:Lcom/android/camera/ui/OnWheelScrollListener;

    .line 147
    new-instance v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$3;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mChangedListener:Lcom/android/camera/ui/OnWheelChangedListener;

    .line 31
    sget-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContext:Landroid/content/Context;

    const v1, 0x7f0e007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceMeasure:Ljava/lang/String;

    .line 35
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Lcom/android/camera/ui/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelScrolled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelScrolled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->onKValueChanged()V

    return-void
.end method

.method private onKValueChanged()V
    .locals 6

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v1}, Lcom/android/camera/ui/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->getItemValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 157
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setKValue(I)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "pref_qc_manual_whitebalance_k_value_key"

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->dismiss()V

    .line 122
    return-void
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 5
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    new-instance v1, Lcom/android/camera/ui/NumericWheelAdapter;

    const/16 v2, 0x7d0

    const/16 v3, 0x1f40

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/NumericWheelAdapter;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->setAdapter(Lcom/android/camera/ui/WheelAdapter;)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mChangedListener:Lcom/android/camera/ui/OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->addChangingListener(Lcom/android/camera/ui/OnWheelChangedListener;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mScrolledListener:Lcom/android/camera/ui/OnWheelScrollListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->addScrollingListener(Lcom/android/camera/ui/OnWheelScrollListener;)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->setCyclic(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->setLabel(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    new-instance v1, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 46
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 52
    .local v9, "index":I
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v9, v1}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v9}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 54
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentIndex:I

    if-eq v0, v9, :cond_3

    move v10, v1

    .line 55
    .local v10, "notifyChange":Z
    :goto_1
    sget-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 58
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager;->getCameraProxy()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v6

    .line 59
    .local v6, "cameraProxy":Lcom/android/camera/CameraManager$CameraProxy;
    if-eqz v6, :cond_1

    .line 60
    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getWBCT()I

    move-result v7

    .line 61
    .local v7, "deviceWB":I
    if-eqz v7, :cond_1

    .line 62
    iput v7, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 63
    const-string v0, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Current WB CCT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v6    # "cameraProxy":Lcom/android/camera/CameraManager$CameraProxy;
    .end local v7    # "deviceWB":I
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/WheelView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget v4, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/WheelView;->getItemIndexByValue(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/WheelView;->setCurrentItem(I)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v3}, Lcom/android/camera/ui/WheelView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/WheelView;->getItemValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 74
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setKValue(I)V

    .line 75
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v3, "manual_whitebalance_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 87
    :goto_3
    if-eqz v10, :cond_2

    .line 88
    iput v9, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentIndex:I

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    goto/16 :goto_0

    .end local v10    # "notifyChange":Z
    :cond_3
    move v10, v2

    .line 54
    goto/16 :goto_1

    .line 66
    .restart local v10    # "notifyChange":Z
    :catch_0
    move-exception v8

    .line 67
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "Camera"

    const-string v3, "Can\'t get current WB CCT"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 76
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceMeasure:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/WheelView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 79
    iput v9, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentIndex:I

    goto/16 :goto_0

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/WheelView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    .line 105
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/WheelView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    .line 106
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContentView:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mOnBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/camera/ui/GridSettingPopup;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/WheelView;->setEnabled(Z)V

    .line 174
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->show()V

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v0}, Lcom/android/camera/ui/WheelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 117
    :cond_0
    return-void
.end method
