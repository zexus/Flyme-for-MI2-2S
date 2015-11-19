.class public Lmiui/widget/MiCloudStateView;
.super Landroid/widget/FrameLayout;
.source "MiCloudStateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/MiCloudStateView$UpdateStateTask;,
        Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
    }
.end annotation


# static fields
.field private static final SYNC_OBSERVER_MASK:I = 0xd


# instance fields
.field private mCloudCountNormalTextAppearance:I

.field private mCloudStatusHighlightTextAppearance:I

.field private mCloudStatusNormalTextAppearance:I

.field private mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

.field private mMiCloudCountText:Landroid/widget/TextView;

.field private mMiCloudStatusText:Landroid/widget/TextView;

.field private mPendingUpdate:Z

.field private mSyncChangeHandle:Ljava/lang/Object;

.field private mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

.field private mSyncing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/MiCloudStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mSyncing:Z

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/MiCloudStateView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method static synthetic access$100(Lmiui/widget/MiCloudStateView;)Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/widget/MiCloudStateView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lmiui/widget/MiCloudStateView;->mSyncing:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/widget/MiCloudStateView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/widget/MiCloudStateView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/widget/MiCloudStateView;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;

    .prologue
    .line 27
    iget v0, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusHighlightTextAppearance:I

    return v0
.end method

.method static synthetic access$600(Lmiui/widget/MiCloudStateView;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;

    .prologue
    .line 27
    iget v0, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusNormalTextAppearance:I

    return v0
.end method

.method static synthetic access$702(Lmiui/widget/MiCloudStateView;Lmiui/widget/MiCloudStateView$UpdateStateTask;)Lmiui/widget/MiCloudStateView$UpdateStateTask;
    .locals 0
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;
    .param p1, "x1"    # Lmiui/widget/MiCloudStateView$UpdateStateTask;

    .prologue
    .line 27
    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

    return-object p1
.end method

.method static synthetic access$800(Lmiui/widget/MiCloudStateView;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$802(Lmiui/widget/MiCloudStateView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/widget/MiCloudStateView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    return p1
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 76
    sget-object v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView:[I

    sget v2, Lcom/miui/system/internal/R$attr;->cloudStateViewStyle:I

    sget v3, Lmiui/system/R$style;->Widget_MiCloudStateView_Light:I

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudCountNormalTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mCloudCountNormalTextAppearance:I

    .line 82
    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusNormalTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusNormalTextAppearance:I

    .line 84
    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusHighlightTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusHighlightTextAppearance:I

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 93
    sget v1, Lcom/miui/system/internal/R$id;->cloud_count:I

    invoke-virtual {p0, v1}, Lmiui/widget/MiCloudStateView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    .line 94
    sget v1, Lcom/miui/system/internal/R$id;->cloud_status:I

    invoke-virtual {p0, v1}, Lmiui/widget/MiCloudStateView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/widget/MiCloudStateView;->mCloudCountNormalTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 98
    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusNormalTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 169
    add-int v4, p3, p5

    div-int/lit8 v3, v4, 0x2

    .line 170
    .local v3, "verticalCenter":I
    iget-object v4, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int v2, v4, v5

    .line 171
    .local v2, "totalHeight":I
    div-int/lit8 v4, v2, 0x2

    sub-int v1, v3, v4

    .line 172
    .local v1, "childTop":I
    iget-object v4, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int v0, v1, v4

    .line 173
    .local v0, "childBottom":I
    iget-object v4, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v4, p2, v1, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 174
    move v1, v0

    .line 175
    iget-object v4, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 176
    iget-object v4, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v4, p2, v1, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 177
    return-void
.end method

.method public registerObserver()V
    .locals 2

    .prologue
    .line 121
    const/16 v0, 0xd

    new-instance v1, Lmiui/widget/MiCloudStateView$1;

    invoke-direct {v1, p0}, Lmiui/widget/MiCloudStateView$1;-><init>(Lmiui/widget/MiCloudStateView;)V

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncChangeHandle:Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public setSyncInfoProvider(Lmiui/widget/MiCloudStateView$ISyncInfoProvider;)V
    .locals 0
    .param p1, "provider"    # Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    .prologue
    .line 114
    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    .line 115
    return-void
.end method

.method public setTotalCountText(Ljava/lang/String;)V
    .locals 1
    .param p1, "countText"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public unregisterObserver()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncChangeHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public updateState()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudStateView;->updateState(Z)V

    .line 141
    return-void
.end method

.method public updateState(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 150
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mSyncing:Z

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mSyncInfoProvider can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

    if-nez v0, :cond_2

    .line 159
    new-instance v0, Lmiui/widget/MiCloudStateView$UpdateStateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;-><init>(Lmiui/widget/MiCloudStateView;Lmiui/widget/MiCloudStateView$1;)V

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

    .line 160
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 162
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    goto :goto_0
.end method
