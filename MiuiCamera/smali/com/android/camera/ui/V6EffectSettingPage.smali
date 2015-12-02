.class public Lcom/android/camera/ui/V6EffectSettingPage;
.super Landroid/widget/FrameLayout;
.source "V6EffectSettingPage.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mDefaultColumnCount:I

.field private mDisabledIndicator:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectGridViewAdapter:Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;

.field private mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

.field private mEnabled:Z

.field public mGridView:Lcom/android/camera/ui/V6GridView;

.field private mInitialized:Z

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mOrientation:I

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSelectedIndex:I

.field public mSettingPageInternal:Landroid/view/View;

.field public mSettingViewParent:Landroid/view/View;

.field private mSmallSurfaceWidth:I

.field private mViewList:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mDisabledIndicator:Ljava/util/Set;

    .line 251
    new-instance v0, Lcom/android/camera/ui/V6EffectSettingPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6EffectSettingPage$1;-><init>(Lcom/android/camera/ui/V6EffectSettingPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mClickListener:Landroid/view/View$OnClickListener;

    .line 52
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mActivity:Lcom/android/camera/ActivityBase;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mDisabledIndicator:Ljava/util/Set;

    .line 251
    new-instance v0, Lcom/android/camera/ui/V6EffectSettingPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6EffectSettingPage$1;-><init>(Lcom/android/camera/ui/V6EffectSettingPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mClickListener:Landroid/view/View$OnClickListener;

    .line 57
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mActivity:Lcom/android/camera/ActivityBase;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6EffectSettingPage;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectSettingPage;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mViewList:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6EffectSettingPage;Landroid/view/LayoutInflater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectSettingPage;
    .param p1, "x1"    # Landroid/view/LayoutInflater;
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6EffectSettingPage;->initializeIndicator(Landroid/view/LayoutInflater;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6EffectSettingPage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectSettingPage;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6EffectSettingPage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectSettingPage;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/V6EffectSettingPage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectSettingPage;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6EffectSettingPage;)[Lcom/android/camera/ui/V6EffectSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectSettingPage;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6EffectSettingPage;)Lcom/android/camera/ActivityBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectSettingPage;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mActivity:Lcom/android/camera/ActivityBase;

    return-object v0
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v0

    .line 344
    .local v0, "preferenceGroup":Lcom/android/camera/preferences/PreferenceGroup;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 346
    return-void

    .line 344
    :cond_0
    const-string v1, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    goto :goto_0
.end method

.method private initializeIndicator(Landroid/view/LayoutInflater;I)V
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "gridIndex"    # I

    .prologue
    .line 192
    const v4, 0x7f04001c

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f0c000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectSurfaceView;

    .line 195
    .local v0, "img":Lcom/android/camera/ui/V6EffectSurfaceView;
    const v4, 0x7f0c0064

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 196
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 197
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSmallSurfaceWidth:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    iget v4, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSmallSurfaceWidth:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget v4, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I

    if-ne p2, v4, :cond_0

    const v4, 0x7f0200a9

    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/camera/ui/V6EffectSurfaceView;->setBackgroundResource(I)V

    .line 204
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 206
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mViewList:[Landroid/view/View;

    aput-object v3, v4, p2

    .line 207
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    aput-object v0, v4, p2

    .line 208
    const-string v4, "V6EffectSettingPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "img="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void

    .line 201
    :cond_0
    const v4, 0x7f0200a8

    goto :goto_0
.end method

.method private updateEffectSelected()V
    .locals 3

    .prologue
    .line 303
    iget-boolean v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mInitialized:Z

    if-nez v1, :cond_1

    .line 311
    :cond_0
    return-void

    .line 304
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    aget-object v2, v1, v0

    iget v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I

    if-ne v0, v1, :cond_3

    const v1, 0x7f0200a9

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/camera/ui/V6EffectSurfaceView;->setBackgroundResource(I)V

    .line 304
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_3
    const v1, 0x7f0200a8

    goto :goto_1
.end method

.method private updatePreference(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/preferences/IconListPreference;

    .prologue
    .line 314
    const-string v0, "pref_camera_shader_coloreffect_key"

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getEntries()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 316
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getEntryValues()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 318
    :cond_0
    return-void
.end method


# virtual methods
.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 168
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mEnabled:Z

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return v6

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c005f

    const/4 v3, 0x2

    const/4 v5, 0x0

    move v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6EffectSettingPage;->setEnabled(Z)V

    .line 157
    iput-boolean p1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mEnabled:Z

    .line 158
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 6

    .prologue
    const v2, 0x7f0c000a

    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 349
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6EffectSettingPage;->setVisibility(I)V

    .line 350
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDisplayShow(Z)V

    .line 351
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6GridView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x4

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    .line 174
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize mEffectGridViewAdapter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mEffectGridViewAdapter:Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-array v2, v5, [Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mViewList:[Landroid/view/View;

    .line 176
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mInitialized:Z

    .line 177
    new-array v2, v5, [Lcom/android/camera/ui/V6EffectSurfaceView;

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectSettingPage;->reloadPreference()V

    .line 180
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectSettingPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 182
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "gridIndex":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 183
    invoke-direct {p0, v1, v0}, Lcom/android/camera/ui/V6EffectSettingPage;->initializeIndicator(Landroid/view/LayoutInflater;I)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mInitialized:Z

    .line 186
    new-instance v2, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;-><init>(Lcom/android/camera/ui/V6EffectSettingPage;)V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mEffectGridViewAdapter:Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;

    .line 187
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    iget v3, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mDefaultColumnCount:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6GridView;->setNumColumns(I)V

    .line 188
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mEffectGridViewAdapter:Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    return-void
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingAnimationManager()Lcom/android/camera/ui/V6SettingAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingAnimationManager;->animationOut()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectSettingPage;->reload()V

    .line 107
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    const v1, 0x7f0c0060

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6EffectSettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSettingPageInternal:Landroid/view/View;

    .line 64
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    :goto_0
    iput v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mDefaultColumnCount:I

    .line 65
    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6EffectSettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSettingViewParent:Landroid/view/View;

    .line 66
    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6EffectSettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6GridView;

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    .line 68
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSettingPageInternal:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 70
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 72
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectSettingPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mDefaultColumnCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectSettingPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mDefaultColumnCount:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSmallSurfaceWidth:I

    .line 76
    return-void

    .line 64
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSettingPageInternal:Landroid/view/View;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    invoke-virtual {v0, v1, p3, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GridView;->updateEffectPosition()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    .line 91
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 81
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 82
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/V6EffectSettingPage;->setMeasuredDimension(II)V

    .line 84
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSettingPageInternal:Landroid/view/View;

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    or-int/2addr v3, v4

    or-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectSettingPage;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectSettingPage;->reloadPreference()V

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6EffectSettingPage;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6GridView;->setVisibility(I)V

    .line 152
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 125
    const-string v0, "Camera"

    const-string v1, "reload"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6EffectSettingPage;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6GridView;->setVisibility(I)V

    .line 132
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectSettingPage;->initPreference()V

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6EffectSettingPage;->updatePreference(Lcom/android/camera/preferences/IconListPreference;)V

    .line 135
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDisplayShow(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectSettingPage;->initialize()V

    .line 138
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "value":Ljava/lang/String;
    const-string v1, "pref_camera_gradienter_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_camera_tilt_shift_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_camera_fisheye_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I

    .line 292
    iget-boolean v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mInitialized:Z

    if-nez v1, :cond_2

    .line 300
    :goto_1
    return-void

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/V6EffectSettingPage;->setOrientation(IZ)V

    .line 294
    iget v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 295
    const-string v1, "V6EffectSettingPage"

    const-string v2, "valid preference value."

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_1

    .line 298
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectSettingPage;->updateEffectSelected()V

    goto :goto_1
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6GridView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDisplayStartIndex(I)V

    .line 339
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6GridView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDisplayEndIndex(I)V

    .line 340
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mGridView:Lcom/android/camera/ui/V6GridView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GridView;->setEnabled(Z)V

    .line 323
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 324
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 162
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 328
    iput p1, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mOrientation:I

    .line 329
    iget-boolean v4, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mInitialized:Z

    if-nez v4, :cond_1

    .line 335
    :cond_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage;->mViewList:[Landroid/view/View;

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 331
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 332
    check-cast v3, Lcom/android/camera/ui/V6TitleImageView;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/V6TitleImageView;->setOrientation(IZ)V

    .line 330
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public translate(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectSettingPage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectSettingPage;->requestLayout()V

    .line 97
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setDisplayShow(Z)V

    .line 98
    return-void
.end method
