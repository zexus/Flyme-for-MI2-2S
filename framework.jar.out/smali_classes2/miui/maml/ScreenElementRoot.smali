.class public Lmiui/maml/ScreenElementRoot;
.super Lmiui/maml/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Lmiui/maml/InteractiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRoot$3;,
        Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;,
        Lmiui/maml/ScreenElementRoot$OnExternCommandListener;,
        Lmiui/maml/ScreenElementRoot$ExtraResource;,
        Lmiui/maml/ScreenElementRoot$InnerGroup;,
        Lmiui/maml/ScreenElementRoot$FramerateHelper;
    }
.end annotation


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field public static final CAPABILITY_ALL:I = -0x1

.field public static final CAPABILITY_VAR_PERSISTENCE:I = 0x2

.field public static final CAPABILITY_WEBSERVICE:I = 0x1

.field private static final DEFAULT_RES_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final EXTERNAL_COMMANDS_TAG_NAME:Ljava/lang/String; = "ExternalCommands"

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final MAML_VERSION:I = 0x2

.field private static final RAW_DENSITY:Ljava/lang/String; = "__raw_density"

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final SCALE_FACTOR:Ljava/lang/String; = "__scale_factor"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"

.field private static final VAR_MAML_VERSION:Ljava/lang/String; = "__maml_version"


# instance fields
.field protected DEFAULT_FRAME_RATE:F

.field private mAllowScreenRotation:Z

.field private mBgColor:I

.field private mCacheDir:Ljava/lang/String;

.field private mCapability:I

.field private mCheckPoint:J

.field private mClearCanvas:Z

.field private mConfig:Lmiui/maml/util/ConfigFile;

.field private mConfigPath:Ljava/lang/String;

.field protected mContext:Lmiui/maml/ScreenContext;

.field protected mController:Lmiui/maml/RendererController;

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalCommandManager:Lmiui/maml/CommandTriggers;

.field private mFinished:Z

.field private mFontScale:F

.field protected mFrameRate:F

.field private mFrameRateVar:Lmiui/maml/data/IndexedVariable;

.field private mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

.field private mFrames:I

.field private mHeight:F

.field private mHoverChangeListener:Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

.field public mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

.field private mHoverMatrix:Landroid/graphics/Matrix;

.field protected mInnerGroup:Lmiui/maml/elements/ElementGroup;

.field private mKeepResource:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lmiui/maml/data/IndexedVariable;

.field private mNeedReset:Z

.field private mPreTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawDefaultResourceDensity:I

.field private mRawHeight:I

.field private mRawTargetDensity:I

.field private mRawWidth:I

.field private mRendererControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mRootTag:Ljava/lang/String;

.field private mScale:F

.field private mScaleByDensity:Z

.field public mShowDebugLayout:Z

.field private mShowFramerate:Z

.field private mSoundManager:Lmiui/maml/SoundManager;

.field private mStylesManager:Lmiui/maml/StylesManager;

.field private mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mTargetDensity:I

.field protected mTargetScreenHeight:I

.field protected mTargetScreenWidth:I

.field private mTouchBeginTime:Lmiui/maml/data/IndexedVariable;

.field private mTouchBeginX:Lmiui/maml/data/IndexedVariable;

.field private mTouchBeginY:Lmiui/maml/data/IndexedVariable;

.field private mTouchX:Lmiui/maml/data/IndexedVariable;

.field private mTouchY:Lmiui/maml/data/IndexedVariable;

.field protected mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

.field private mVersion:I

.field private mViewManager:Landroid/view/ViewManager;

.field private mWidth:F


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 4
    .param p1, "c"    # Lmiui/maml/ScreenContext;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 250
    invoke-direct {p0, v0, v0}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 91
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 159
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    .line 199
    new-instance v0, Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-direct {v0}, Lmiui/maml/ScreenElementRoot$FramerateHelper;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    .line 252
    iput-object p0, p0, Lmiui/maml/ScreenElementRoot;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 253
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    .line 254
    new-instance v0, Lmiui/maml/data/VariableUpdaterManager;

    invoke-direct {v0, p0}, Lmiui/maml/data/VariableUpdaterManager;-><init>(Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    .line 255
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string v1, "touch_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/data/IndexedVariable;

    .line 256
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string v1, "touch_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/data/IndexedVariable;

    .line 257
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string v1, "touch_begin_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/data/IndexedVariable;

    .line 258
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string v1, "touch_begin_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/data/IndexedVariable;

    .line 259
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string v1, "touch_begin_time"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/data/IndexedVariable;

    .line 260
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string v1, "intercept_sys_touch"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/data/IndexedVariable;

    .line 262
    new-instance v0, Lmiui/maml/SoundManager;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-direct {v0, v1}, Lmiui/maml/SoundManager;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    .line 263
    new-instance v0, Lmiui/maml/SystemCommandListener;

    invoke-direct {v0, p0}, Lmiui/maml/SystemCommandListener;-><init>(Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/ScreenElementRoot;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 50
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTriggers;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 50
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    return-object v0
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 477
    if-nez p1, :cond_1

    .line 502
    :cond_0
    return-void

    .line 480
    :cond_1
    new-instance v6, Lmiui/maml/util/ConfigFile;

    invoke-direct {v6}, Lmiui/maml/util/ConfigFile;-><init>()V

    iput-object v6, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    .line 481
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v6, p1}, Lmiui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 483
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v6}, Lmiui/maml/ResourceManager;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 484
    .local v3, "root":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v6, v3}, Lmiui/maml/util/ConfigFile;->loadDefaultSettings(Lorg/w3c/dom/Element;)V

    .line 486
    .end local v3    # "root":Lorg/w3c/dom/Element;
    :cond_2
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v6}, Lmiui/maml/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/util/ConfigFile$Variable;

    .line 487
    .local v5, "v":Lmiui/maml/util/ConfigFile$Variable;
    iget-object v6, v5, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v7, "string"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 488
    iget-object v6, v5, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v8, v5, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_4
    iget-object v6, v5, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v7, "number"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 491
    :try_start_0
    iget-object v6, v5, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 492
    .local v0, "d":D
    iget-object v6, v5, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v6, v7, v0, v1}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    .end local v0    # "d":D
    :catch_0
    move-exception v6

    goto :goto_0

    .line 497
    .end local v5    # "v":Lmiui/maml/util/ConfigFile$Variable;
    :cond_5
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v6}, Lmiui/maml/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/util/Task;

    .line 498
    .local v4, "t":Lmiui/maml/util/Task;
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".class"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private loadRawAttrs(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1041
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1042
    .local v2, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1043
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1044
    .local v1, "item":Lorg/w3c/dom/Node;
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1046
    .end local v1    # "item":Lorg/w3c/dom/Node;
    :cond_0
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1051
    const-string v1, "useVariableUpdater"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "updater":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {p0, v1}, Lmiui/maml/ScreenElementRoot;->onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V

    .line 1057
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v1, v0}, Lmiui/maml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupScale(Lorg/w3c/dom/Element;)V
    .locals 21
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 955
    const-string v18, "scaleByDensity"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 956
    .local v13, "scaleByDensity":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 957
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 959
    :cond_0
    const-string v18, "defaultScreenWidth"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 960
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 961
    const-string v18, "screenWidth"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 963
    :cond_1
    const-string v18, "defaultResourceDensity"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 964
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 965
    const-string v18, "resDensity"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 967
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 968
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 969
    const/16 v18, 0x1e0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 970
    const/16 v18, 0xf0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 978
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lmiui/maml/ResourceManager;->setDefaultResourceDensity(I)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "window"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 981
    .local v17, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 983
    .local v4, "display":Landroid/view/Display;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 984
    .local v15, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 985
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v11

    .line 986
    .local v11, "rotation":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v11, v0, :cond_9

    :cond_4
    const/4 v10, 0x1

    .line 987
    .local v10, "rotated":Z
    :goto_1
    if-eqz v10, :cond_a

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 988
    if-eqz v10, :cond_b

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 989
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 990
    .local v6, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 991
    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 994
    .local v3, "config":Landroid/content/res/Configuration;
    iget v0, v3, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v18, v0

    and-int/lit8 v16, v18, 0xf

    .line 997
    .local v16, "targetSizeType":I
    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 998
    .local v7, "rawDefaultResourceDen":I
    if-nez v7, :cond_5

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v7, v0, 0x1e0

    .line 1001
    :cond_5
    new-instance v9, Lmiui/maml/ScreenElementRoot$ExtraResource;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v7}, Lmiui/maml/ScreenElementRoot$ExtraResource;-><init>(Lorg/w3c/dom/Element;I)V

    .line 1002
    .local v9, "resources":Lmiui/maml/ScreenElementRoot$ExtraResource;
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v9, v0, v1, v2}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findResource(III)Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    move-result-object v8

    .line 1003
    .local v8, "res":Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    const-string v18, "ScreenElementRoot"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findResource: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget v0, v8, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v8, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v5, v0

    .line 1005
    .local v5, "extraResDen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v18, v0

    iget-object v0, v8, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lmiui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 1008
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v9, v0, v1, v2}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findScale(III)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object v12

    .line 1009
    .local v12, "scale":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    const-string v18, "ScreenElementRoot"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findScale: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/high16 v14, 0x3f800000    # 1.0f

    .line 1013
    .local v14, "scaleResourceToTarget":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1014
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 1016
    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_c

    .line 1017
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    .line 1031
    :cond_6
    :goto_4
    const-string v18, "ScreenElementRoot"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set scale: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lmiui/maml/ResourceManager;->setTargetDensity(I)V

    .line 1034
    const-string v18, "width"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    .line 1035
    const-string v18, "height"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    .line 1036
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mWidth:F

    .line 1037
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mHeight:F

    .line 1038
    return-void

    .line 971
    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "extraResDen":I
    .end local v6    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "rawDefaultResourceDen":I
    .end local v8    # "res":Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    .end local v9    # "resources":Lmiui/maml/ScreenElementRoot$ExtraResource;
    .end local v10    # "rotated":Z
    .end local v11    # "rotation":I
    .end local v12    # "scale":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .end local v14    # "scaleResourceToTarget":F
    .end local v15    # "size":Landroid/graphics/Point;
    .end local v16    # "targetSizeType":I
    .end local v17    # "wm":Landroid/view/WindowManager;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 973
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto/16 :goto_0

    .line 974
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x1e0

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    goto/16 :goto_0

    .line 986
    .restart local v4    # "display":Landroid/view/Display;
    .restart local v11    # "rotation":I
    .restart local v15    # "size":Landroid/graphics/Point;
    .restart local v17    # "wm":Landroid/view/WindowManager;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 987
    .restart local v10    # "rotated":Z
    :cond_a
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    goto/16 :goto_2

    .line 988
    :cond_b
    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    goto/16 :goto_3

    .line 1019
    .restart local v3    # "config":Landroid/content/res/Configuration;
    .restart local v5    # "extraResDen":I
    .restart local v6    # "outMetrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "rawDefaultResourceDen":I
    .restart local v8    # "res":Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    .restart local v9    # "resources":Lmiui/maml/ScreenElementRoot$ExtraResource;
    .restart local v12    # "scale":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .restart local v14    # "scaleResourceToTarget":F
    .restart local v16    # "targetSizeType":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 1020
    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    move/from16 v18, v0

    mul-float v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto/16 :goto_4

    .line 1023
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    .line 1024
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 1026
    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6

    .line 1027
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 1028
    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    move/from16 v18, v0

    mul-float v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto/16 :goto_4
.end method

.method private traverseElements()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 683
    new-instance v0, Lmiui/maml/ScreenElementRoot$1;

    invoke-direct {v0, p0}, Lmiui/maml/ScreenElementRoot$1;-><init>(Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 703
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/elements/ScreenElementVisitor;

    .prologue
    .line 1370
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 1371
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 1372
    return-void
.end method

.method public addPreTicker(Lmiui/maml/elements/ITicker;)V
    .locals 1
    .param p1, "ticker"    # Lmiui/maml/elements/ITicker;

    .prologue
    .line 1186
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    return-void
.end method

.method public allowScreenRotation()Z
    .locals 1

    .prologue
    .line 1388
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    return v0
.end method

.method public attachToRenderThread(Lmiui/maml/RenderThread;)V
    .locals 4
    .param p1, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 1316
    if-eqz p1, :cond_0

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    if-nez v2, :cond_1

    .line 1317
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "thread or controller is null, MUST load before attaching"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1319
    :cond_1
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1320
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1321
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {p1, v2}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    .line 1320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1323
    :cond_2
    return-void
.end method

.method public createFramerateToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public detachFromRenderThread(Lmiui/maml/RenderThread;)V
    .locals 4
    .param p1, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 1326
    if-eqz p1, :cond_0

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    if-nez v2, :cond_1

    .line 1327
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "thread or controller is null, MUST load before detaching"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1329
    :cond_1
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1330
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1331
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {p1, v2}, Lmiui/maml/RenderThread;->removeRendererController(Lmiui/maml/RendererController;)V

    .line 1330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1333
    :cond_2
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 381
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mClearCanvas:Z

    if-eqz v1, :cond_1

    .line 385
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 387
    :cond_1
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mBgColor:I

    if-eqz v1, :cond_2

    .line 388
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mBgColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 392
    :cond_2
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 400
    :goto_1
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    if-eqz v1, :cond_3

    .line 401
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->draw(Landroid/graphics/Canvas;)V

    .line 404
    :cond_3
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    .line 405
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v1}, Lmiui/maml/RendererController;->doneRender()V

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 397
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected doTick(J)V
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    .line 299
    iget-boolean v5, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v5, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v5, :cond_2

    .line 303
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v5}, Lmiui/maml/data/VariableBinderManager;->tick()V

    .line 305
    :cond_2
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/data/VariableUpdaterManager;->tick(J)V

    .line 308
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 309
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 310
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/ITicker;

    invoke-interface {v5, p1, p2}, Lmiui/maml/elements/ITicker;->tick(J)V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    :cond_3
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/ElementGroup;->tick(J)V

    .line 316
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v2

    .line 317
    .local v2, "d":D
    const-wide/16 v8, 0x0

    cmpl-double v5, v2, v8

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 320
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_4

    .line 321
    new-instance v5, Lmiui/maml/data/IndexedVariable;

    const-string v8, "frame_rate"

    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v10, 0x1

    invoke-direct {v5, v8, v9, v10}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/data/IndexedVariable;

    .line 322
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 325
    :cond_4
    iget-wide v8, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_6

    .line 326
    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    goto :goto_0

    .line 317
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 328
    :cond_6
    iget-wide v8, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    sub-long v6, p1, v8

    .line 329
    .local v6, "t":J
    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 330
    iget v5, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v8, v5

    div-long/2addr v8, v6

    long-to-int v4, v8

    .line 331
    .local v4, "r":I
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v5, v4}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->set(I)V

    .line 332
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v4

    invoke-virtual {v5, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 333
    const/4 v5, 0x0

    iput v5, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    .line 334
    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    goto :goto_0
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    .line 1337
    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0, p1}, Lmiui/maml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 369
    const-string v0, "__root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    .end local p0    # "this":Lmiui/maml/ScreenElementRoot;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lmiui/maml/ScreenElementRoot;
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object p0

    goto :goto_0
.end method

.method public findTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1090
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lmiui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1124
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v0, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1126
    :cond_0
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    .line 1127
    const-string v0, "ScreenElementRoot"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 1130
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-eqz v0, :cond_1

    .line 1131
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0}, Lmiui/maml/util/ConfigFile;->save()Z

    .line 1134
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_2

    .line 1135
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->finish()V

    .line 1137
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_3

    .line 1138
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->finish()V

    .line 1140
    :cond_3
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_4

    .line 1141
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->finish()V

    .line 1143
    :cond_4
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0}, Lmiui/maml/SoundManager;->release()V

    .line 1144
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    invoke-virtual {v0, v1}, Lmiui/maml/ResourceManager;->finish(Z)V

    .line 1145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    .line 1146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    goto :goto_0
.end method

.method public getCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getCapability(I)Z
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 1422
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .locals 1

    .prologue
    .line 1115
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public final getFontScale()F
    .locals 1

    .prologue
    .line 1446
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mFontScale:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 1182
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    return v0
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRendererController()Lmiui/maml/RendererController;
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    return-object v0
.end method

.method public getResourceDensity()I
    .locals 1

    .prologue
    .line 1107
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public getRootTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getScale()F
    .locals 2

    .prologue
    .line 1098
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1099
    const-string v0, "ScreenElementRoot"

    const-string v1, "scale not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1103
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 1174
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 1170
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    return v0
.end method

.method public getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;
    .locals 2
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 675
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mStylesManager:Lmiui/maml/StylesManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mStylesManager:Lmiui/maml/StylesManager;

    invoke-virtual {v0, p1}, Lmiui/maml/StylesManager;->getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;

    move-result-object v0

    goto :goto_0
.end method

.method public getTargetDensity()I
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public getViewManager()Landroid/view/ViewManager;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mViewManager:Landroid/view/ViewManager;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 1178
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    return v0
.end method

.method public haptic(I)V
    .locals 0
    .param p1, "effectId"    # I

    .prologue
    .line 1086
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 414
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 415
    const-string v1, "ScreenElementRoot"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v1}, Lmiui/maml/ScreenElementRoot;->requestFramerate(F)V

    .line 419
    const/4 v1, -0x1

    iput v1, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    .line 420
    const-string v1, "debug.layout"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 422
    iput-boolean v3, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    .line 423
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v1}, Lmiui/maml/ResourceManager;->init()V

    .line 425
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 428
    .local v0, "vars":Lmiui/maml/data/Variables;
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lmiui/maml/ScreenElementRoot;->mFontScale:F

    .line 429
    const-string v1, "__fontScale"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mFontScale:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 432
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v1, v2, v3}, Lmiui/maml/LanguageHelper;->load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z

    .line 434
    const-string v1, "raw_screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 435
    const-string v1, "raw_screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 436
    const-string v1, "screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 437
    const-string v1, "screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 438
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    if-lez v1, :cond_0

    .line 439
    const-string v1, "view_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 441
    :cond_0
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    if-lez v1, :cond_1

    .line 442
    const-string v1, "view_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 444
    :cond_1
    const-string v1, "view_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 445
    const-string v1, "view_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 447
    const-string v1, "__raw_density"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 448
    const-string v1, "__scale_factor"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 449
    const-string v1, "__maml_version"

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 450
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->loadConfig()V

    .line 453
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v1}, Lmiui/maml/data/VariableUpdaterManager;->init()V

    .line 457
    :cond_2
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v1}, Lmiui/maml/data/VariableBinderManager;->init()V

    .line 461
    :cond_3
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v1, :cond_4

    .line 462
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v1}, Lmiui/maml/CommandTriggers;->init()V

    .line 465
    :cond_4
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 467
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v2, 0x0

    iput-object v2, v1, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    .line 468
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 469
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 470
    return-void
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "para1"    # Ljava/lang/Double;
    .param p3, "para2"    # Ljava/lang/String;

    .prologue
    .line 1204
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-interface {v1, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1207
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 1208
    .local v0, "l":Lmiui/maml/ScreenElementRoot$OnExternCommandListener;
    if-eqz v0, :cond_0

    .line 1209
    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 1210
    const-string v1, "ScreenElementRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "issueExternCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    .end local v0    # "l":Lmiui/maml/ScreenElementRoot$OnExternCommandListener;
    :cond_0
    return-void
.end method

.method public final load()Z
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 618
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 619
    .local v4, "start":J
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v9}, Lmiui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 620
    .local v3, "root":Lorg/w3c/dom/Element;
    if-nez v3, :cond_1

    .line 667
    .end local v3    # "root":Lorg/w3c/dom/Element;
    .end local v4    # "start":J
    :cond_0
    :goto_0
    return v7

    .line 623
    .restart local v3    # "root":Lorg/w3c/dom/Element;
    .restart local v4    # "start":J
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    .line 624
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    .line 625
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 628
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    .line 630
    const-string v9, "VariableBinders"

    invoke-static {v3, v9}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 632
    .local v0, "binders":Lorg/w3c/dom/Element;
    new-instance v9, Lmiui/maml/data/VariableBinderManager;

    invoke-direct {v9, v0, p0}, Lmiui/maml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v9, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    .line 634
    const-string v9, "ExternalCommands"

    invoke-static {v3, v9}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 635
    .local v1, "commands":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_2

    .line 636
    new-instance v9, Lmiui/maml/CommandTriggers;

    invoke-direct {v9, v1, p0}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v9, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    .line 640
    :cond_2
    const-string v9, "Styles"

    invoke-static {v3, v9}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 641
    .local v6, "styles":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_3

    .line 642
    new-instance v9, Lmiui/maml/StylesManager;

    invoke-direct {v9, v6}, Lmiui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v9, p0, Lmiui/maml/ScreenElementRoot;->mStylesManager:Lmiui/maml/StylesManager;

    .line 645
    :cond_3
    const-string v9, "frameRate"

    iget v10, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {v3, v9, v10}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    .line 646
    const-string v9, "clearCanvas"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lmiui/maml/ScreenElementRoot;->mClearCanvas:Z

    .line 647
    const-string v9, "allowScreenRotation"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    .line 648
    new-instance v9, Lmiui/maml/RendererController;

    invoke-direct {v9}, Lmiui/maml/RendererController;-><init>()V

    iput-object v9, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    .line 649
    new-instance v9, Lmiui/maml/ScreenElementRoot$InnerGroup;

    invoke-direct {v9, v3, p0}, Lmiui/maml/ScreenElementRoot$InnerGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v9, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    .line 650
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_4

    .line 651
    const-string v8, "ScreenElementRoot"

    const-string v9, "load error, no element loaded"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    .end local v0    # "binders":Lorg/w3c/dom/Element;
    .end local v1    # "commands":Lorg/w3c/dom/Element;
    .end local v3    # "root":Lorg/w3c/dom/Element;
    .end local v4    # "start":J
    .end local v6    # "styles":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v2

    .line 665
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 654
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "binders":Lorg/w3c/dom/Element;
    .restart local v1    # "commands":Lorg/w3c/dom/Element;
    .restart local v3    # "root":Lorg/w3c/dom/Element;
    .restart local v4    # "start":J
    .restart local v6    # "styles":Lorg/w3c/dom/Element;
    :cond_4
    :try_start_1
    const-string v9, "version"

    const/4 v10, 0x1

    invoke-static {v3, v9, v10}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mVersion:I

    .line 655
    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 660
    invoke-direct {p0}, Lmiui/maml/ScreenElementRoot;->traverseElements()V

    .line 662
    const-string v9, "ScreenElementRoot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "load finished, spent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v8

    .line 663
    goto/16 :goto_0
.end method

.method public loadConfig()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ScreenElementRoot;->loadConfig(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public needDisallowInterceptTouchEvent()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;

    .prologue
    .line 271
    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 272
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1150
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 1151
    new-instance v0, Lmiui/maml/ScreenElementRoot$2;

    invoke-direct {v0, p0, p1}, Lmiui/maml/ScreenElementRoot$2;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->postRunnable(Ljava/lang/Runnable;)V

    .line 1163
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1380
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v0, :cond_0

    .line 1381
    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 1382
    const-string v0, "orientationChange"

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 1385
    :cond_0
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 593
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onHoverChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 1224
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mHoverChangeListener:Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mHoverChangeListener:Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

    invoke-interface {v0, p1}, Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;->onHoverChange(Ljava/lang/String;)V

    .line 1227
    :cond_0
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 1
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 545
    iget-boolean v10, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v10, :cond_1

    .line 588
    :cond_0
    :goto_0
    return v4

    .line 548
    :cond_1
    iget-object v10, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v10, :cond_4

    .line 549
    iget-object v10, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v10}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    .line 550
    .local v1, "hoverWidth":F
    iget-object v10, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v10}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    .line 551
    .local v0, "hoverHeight":F
    iget-object v10, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v10}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v10

    div-float v11, v1, v12

    add-float v2, v10, v11

    .line 552
    .local v2, "hoverX":F
    iget-object v10, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v10}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v10

    div-float v11, v0, v12

    add-float v3, v10, v11

    .line 553
    .local v3, "hoverY":F
    iget-object v10, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float v11, v2, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    sub-float v12, v3, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 554
    iget-object v10, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 555
    iget-object v10, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v10, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-eq v10, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 558
    :cond_2
    const/4 v10, 0x0

    iput-object v10, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    :cond_3
    move v4, v5

    .line 560
    goto :goto_0

    .line 563
    .end local v0    # "hoverHeight":F
    .end local v1    # "hoverWidth":F
    .end local v2    # "hoverX":F
    .end local v3    # "hoverY":F
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {p0, v10, v11}, Lmiui/maml/ScreenElementRoot;->descale(D)D

    move-result-wide v6

    .line 564
    .local v6, "x":D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {p0, v10, v11}, Lmiui/maml/ScreenElementRoot;->descale(D)D

    move-result-wide v8

    .line 566
    .local v8, "y":D
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 567
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 583
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v5, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 584
    .local v4, "ret":Z
    if-nez v4, :cond_0

    .line 586
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v5}, Lmiui/maml/RendererController;->requestUpdate()V

    goto/16 :goto_0

    .line 570
    .end local v4    # "ret":Z
    :pswitch_1
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 571
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 572
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/data/IndexedVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-double v10, v10

    invoke-virtual {v5, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 574
    iput-boolean v4, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 579
    :pswitch_2
    iput-boolean v4, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 568
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1167
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 506
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 507
    const-string v0, "ScreenElementRoot"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 510
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0}, Lmiui/maml/SoundManager;->pause()V

    .line 511
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->pause()V

    .line 514
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->pause()V

    .line 517
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->pause()V

    .line 519
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->pause()V

    .line 520
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1347
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 1348
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->pauseAnim(J)V

    .line 1349
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 1341
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 1342
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/elements/ElementGroup;->playAnim(JJJZZ)V

    .line 1343
    return-void
.end method

.method public playSound(Ljava/lang/String;)I
    .locals 3
    .param p1, "sound"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1060
    new-instance v0, Lmiui/maml/SoundManager$SoundOptions;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Lmiui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I

    move-result v0

    return v0
.end method

.method public playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I
    .locals 2
    .param p1, "sound"    # Ljava/lang/String;
    .param p2, "options"    # Lmiui/maml/SoundManager$SoundOptions;

    .prologue
    const/4 v0, 0x0

    .line 1065
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return v0

    .line 1068
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1069
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/SoundManager;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I

    move-result v0

    goto :goto_0
.end method

.method public playSound(ILmiui/maml/SoundManager$Command;)V
    .locals 3
    .param p1, "streamId"    # I
    .param p2, "command"    # Lmiui/maml/SoundManager$Command;

    .prologue
    .line 1078
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v1, p1, p2}, Lmiui/maml/SoundManager;->playSound(ILmiui/maml/SoundManager$Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :goto_0
    return-void

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 358
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1286
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    .line 1287
    return-void
.end method

.method protected putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 364
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenContext;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method public removePreTicker(Lmiui/maml/elements/ITicker;)V
    .locals 1
    .param p1, "ticker"    # Lmiui/maml/elements/ITicker;

    .prologue
    .line 1190
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1191
    return-void
.end method

.method public requestUpdate()V
    .locals 4

    .prologue
    .line 1307
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1308
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1309
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 1310
    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->requestUpdate()V

    .line 1308
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1312
    .end local v1    # "c":Lmiui/maml/RendererController;
    :cond_0
    return-void
.end method

.method public reset(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1359
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 1360
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    .line 1361
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 524
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 525
    const-string v0, "ScreenElementRoot"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, "debug.layout"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 529
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 531
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->resume()V

    .line 534
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->resume()V

    .line 537
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->resume()V

    .line 540
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->resume()V

    .line 541
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1353
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 1354
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->resumeAnim(J)V

    .line 1355
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 1230
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    .line 1231
    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :goto_0
    return-void

    .line 1235
    :cond_0
    if-nez p2, :cond_1

    .line 1236
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    const-string v1, "null"

    invoke-virtual {v0, p1, v1}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1238
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1243
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    .line 1244
    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :goto_0
    return-void

    .line 1247
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selfFinish()V
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->finish()V

    .line 1259
    return-void
.end method

.method public selfInit()V
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    .line 1255
    return-void
.end method

.method public selfPause()V
    .locals 3

    .prologue
    .line 1262
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1263
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1264
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->selfPause()V

    .line 1263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1266
    :cond_0
    return-void
.end method

.method public selfResume()V
    .locals 3

    .prologue
    .line 1269
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1270
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1271
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->selfResume()V

    .line 1270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1273
    :cond_0
    return-void
.end method

.method public setBgColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 1426
    iput p1, p0, Lmiui/maml/ScreenElementRoot;->mBgColor:I

    .line 1427
    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setCapability(IZ)V
    .locals 2
    .param p1, "cap"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1414
    if-eqz p2, :cond_0

    .line 1415
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    or-int/2addr v0, p1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    .line 1419
    :goto_0
    return-void

    .line 1417
    :cond_0
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    goto :goto_0
.end method

.method public setClearCanvas(Z)V
    .locals 0
    .param p1, "clear"    # Z

    .prologue
    .line 1430
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mClearCanvas:Z

    .line 1431
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1392
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 1394
    .local v0, "vars":Lmiui/maml/data/Variables;
    const-string v1, "orientation"

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 1396
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 1411
    .end local v0    # "vars":Lmiui/maml/data/Variables;
    :cond_0
    :goto_0
    return-void

    .line 1398
    .restart local v0    # "vars":Lmiui/maml/data/Variables;
    :pswitch_0
    const-string v1, "raw_screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1399
    const-string v1, "raw_screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1400
    const-string v1, "screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1401
    const-string v1, "screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    goto :goto_0

    .line 1404
    :pswitch_1
    const-string v1, "raw_screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1405
    const-string v1, "raw_screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1406
    const-string v1, "screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1407
    const-string v1, "screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    goto :goto_0

    .line 1396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDefaultFramerate(F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    .line 349
    iput p1, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 350
    return-void
.end method

.method public final setKeepResource(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1119
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 1120
    return-void
.end method

.method public setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .prologue
    .line 1199
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 1200
    return-void

    .line 1199
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V
    .locals 0
    .param p1, "l"    # Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

    .prologue
    .line 1220
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mHoverChangeListener:Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

    .line 1221
    return-void
.end method

.method public setRenderControllerListener(Lmiui/maml/RendererController$Listener;)V
    .locals 1
    .param p1, "l"    # Lmiui/maml/RendererController$Listener;

    .prologue
    .line 1277
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    .line 1278
    return-void
.end method

.method public setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 1
    .param p1, "r"    # Lmiui/maml/RendererController$IRenderable;

    .prologue
    .line 1282
    new-instance v0, Lmiui/maml/SingleRootListener;

    invoke-direct {v0, p0, p1}, Lmiui/maml/SingleRootListener;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RendererController$IRenderable;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerListener(Lmiui/maml/RendererController$Listener;)V

    .line 1283
    return-void
.end method

.method public setScaleByDensity(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 707
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 708
    return-void
.end method

.method public setViewManager(Landroid/view/ViewManager;)V
    .locals 0
    .param p1, "vm"    # Landroid/view/ViewManager;

    .prologue
    .line 1434
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mViewManager:Landroid/view/ViewManager;

    .line 1435
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 1094
    const/4 v0, 0x1

    return v0
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    .line 1365
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 1366
    return-void
.end method

.method public showFramerate(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 409
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    .line 410
    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 289
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0, p1, p2}, Lmiui/maml/ScreenElementRoot;->reset(J)V

    .line 291
    const-string v0, "init"

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 294
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/ScreenElementRoot;->doTick(J)V

    .line 295
    return-void
.end method

.method public update(J)J
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    .line 1291
    const-wide v6, 0x7fffffffffffffffL

    .line 1292
    .local v6, "nextUpdateInterval":J
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1293
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1294
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 1295
    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1293
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1298
    :cond_1
    invoke-virtual {v1, p1, p2}, Lmiui/maml/RendererController;->update(J)J

    move-result-wide v4

    .line 1299
    .local v4, "l":J
    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1300
    move-wide v6, v4

    goto :goto_1

    .line 1302
    .end local v1    # "c":Lmiui/maml/RendererController;
    .end local v4    # "l":J
    :cond_2
    return-wide v6
.end method

.method public final version()I
    .locals 1

    .prologue
    .line 1442
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mVersion:I

    return v0
.end method
