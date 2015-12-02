.class public Lcom/android/zxing/QRCodeManager;
.super Ljava/lang/Object;
.source "QRCodeManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zxing/QRCodeManager$MyHander;,
        Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    }
.end annotation


# static fields
.field private static CENTER_FRAME_WIDTH:I

.field private static final DECODE_AUTO_INTERVAL:I

.field private static final DECODE_TOTAL_TIME:I

.field private static MAX_FRAME_HEIGHT:I

.field private static MAX_FRAME_WIDTH:I

.field private static mRectFinderCenter:Landroid/graphics/Rect;

.field private static mRectFinderFocusArea:Landroid/graphics/Rect;

.field private static mRectPreviewCenter:Landroid/graphics/Rect;

.field private static mRectPreviewFocusArea:Landroid/graphics/Rect;

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/zxing/QRCodeManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mDecode:Z

.field private mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

.field private mNeedScan:Z

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewLayoutHeight:I

.field private mPreviewLayoutWidth:I

.field private mPreviewWidth:I

.field private mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

.field private mResult:Ljava/lang/String;

.field private mResumeTime:J

.field private mUIInitialized:Z

.field private mViewFinderButton:Landroid/widget/TextView;

.field private mViewFinderFrame:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-static {}, Lcom/android/camera/Device;->isLowPowerQRScan()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x7d0

    :goto_0
    sput v2, Lcom/android/zxing/QRCodeManager;->DECODE_AUTO_INTERVAL:I

    .line 39
    invoke-static {}, Lcom/android/camera/Device;->isLowPowerQRScan()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4e20

    :goto_1
    sput v2, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    .line 40
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    .line 45
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    .line 46
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    .line 47
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    .line 48
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    .line 73
    const/16 v2, 0x168

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    .line 74
    const/16 v2, 0x1e0

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    .line 75
    const/16 v2, 0x2d0

    sput v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    .line 78
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 79
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 81
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 82
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    .line 83
    sget v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    .line 84
    sget v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    .line 85
    return-void

    .line 38
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_0
    const/16 v2, 0x3e8

    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    .line 87
    new-instance v0, Lcom/android/zxing/QRCodeManager$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/QRCodeManager$1;-><init>(Lcom/android/zxing/QRCodeManager;)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/DecodeHandlerFactory;
    .locals 1
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/zxing/QRCodeManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/zxing/QRCodeManager;->DECODE_AUTO_INTERVAL:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/zxing/QRCodeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->exitDecode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/zxing/QRCodeManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/zxing/QRCodeManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/zxing/QRCodeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/zxing/QRCodeManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->scanQRCodeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/zxing/QRCodeManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/zxing/QRCodeManager;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/zxing/QRCodeManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method private exitDecode()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandlerFactory;->quit()V

    .line 391
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    .line 393
    return-void
.end method

.method private hide()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public static instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    sget-object v1, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/QRCodeManager;

    .line 229
    .local v0, "instance":Lcom/android/zxing/QRCodeManager;
    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/android/zxing/QRCodeManager;

    .end local v0    # "instance":Lcom/android/zxing/QRCodeManager;
    invoke-direct {v0}, Lcom/android/zxing/QRCodeManager;-><init>()V

    .line 231
    .restart local v0    # "instance":Lcom/android/zxing/QRCodeManager;
    sget-object v1, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_0
    return-object v0
.end method

.method public static recode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 194
    const-string v2, ""

    .line 197
    .local v2, "formart":Ljava/lang/String;
    :try_start_0
    const-string v4, "ISO-8859-1"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 198
    .local v0, "ISO":Z
    if-eqz v0, :cond_0

    .line 199
    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "GB2312"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "formart":Ljava/lang/String;
    .local v3, "formart":Ljava/lang/String;
    move-object v2, v3

    .line 206
    .end local v0    # "ISO":Z
    .end local v3    # "formart":Ljava/lang/String;
    .restart local v2    # "formart":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 201
    .restart local v0    # "ISO":Z
    :cond_0
    move-object v2, p0

    goto :goto_0

    .line 203
    .end local v0    # "ISO":Z
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    sget-object v1, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/QRCodeManager;

    .line 238
    .local v0, "instance":Lcom/android/zxing/QRCodeManager;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onPause()V

    .line 241
    :cond_0
    return-void
.end method

.method private scanQRCodeEnabled()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    invoke-interface {v0}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->scanQRCodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendDecodeMessageSafe(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    const v1, 0x7f0c0007

    .line 221
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mNeedScan:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 225
    :cond_0
    return-void
.end method

.method private show()V
    .locals 5

    .prologue
    .line 110
    iget-boolean v3, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 114
    .local v0, "activityBase":Lcom/android/camera/ActivityBase;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.receiverResultBarcodeScanner"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.miui.barcodescanner"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v3, "result"

    iget-object v4, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {v0, v2}, Lcom/android/camera/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 118
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "activityBase":Lcom/android/camera/ActivityBase;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 121
    const-string v3, "QRCodeManager"

    const-string v4, "check if BarcodeScanner tool is installed or not"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startDecodeThreadIfNeeded()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/android/zxing/DecodeHandlerFactory;

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/zxing/DecodeHandlerFactory;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    .line 262
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandlerFactory;->start()V

    .line 264
    :cond_0
    return-void
.end method

.method private updateRectInPreview()V
    .locals 7

    .prologue
    .line 319
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-nez v2, :cond_0

    .line 332
    :goto_0
    return-void

    .line 320
    :cond_0
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 321
    .local v1, "scaleWidth":F
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 322
    .local v0, "scaleHeight":F
    sget-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sget-object v4, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sget-object v5, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 327
    sget-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sget-object v4, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sget-object v5, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public buildLuminanceSource([BIIZ)Lcom/android/zxing/YUVLuminanceSource;
    .locals 8
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "center"    # Z

    .prologue
    .line 366
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->scanQRCodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    if-eqz p4, :cond_0

    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/android/zxing/YUVLuminanceSource;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    .line 378
    :goto_0
    return-object v0

    .line 371
    :cond_0
    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Lcom/android/zxing/YUVLuminanceSource;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_0

    .line 378
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hideViewFinderFrame()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public needScanQRCode(Z)V
    .locals 2
    .param p1, "scan"    # Z

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-eqz v0, :cond_2

    move v0, p1

    :goto_0
    iput-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mNeedScan:Z

    .line 134
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 135
    if-eqz p1, :cond_3

    .line 136
    sget v0, Lcom/android/zxing/QRCodeManager;->DECODE_AUTO_INTERVAL:I

    invoke-direct {p0, v0}, Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V

    .line 141
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mNeedScan:Z

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->startDecodeThreadIfNeeded()V

    .line 144
    :cond_1
    return-void

    .line 133
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->hide()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 102
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->show()V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "listener"    # Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    .line 247
    iput-object p3, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    .line 248
    new-instance v0, Lcom/android/zxing/QRCodeManager$MyHander;

    invoke-direct {v0, p0, p2}, Lcom/android/zxing/QRCodeManager$MyHander;-><init>(Lcom/android/zxing/QRCodeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    .line 250
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c002d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/ui/QRCodeFragmentLayout;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    .line 251
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    .line 252
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderButton:Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/zxing/QRCodeManager;->resetQRScanExit(Z)V

    .line 257
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->removeInstance(Landroid/content/Context;)V

    .line 346
    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    .line 347
    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    .line 348
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->exitDecode()V

    .line 340
    iput-object v2, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 341
    iput-object v2, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public requestDecode()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 360
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V

    .line 362
    :cond_0
    return-void
.end method

.method public resetQRScanExit(Z)V
    .locals 12
    .param p1, "resumeFlag"    # Z

    .prologue
    const-wide/16 v10, -0x1

    const v8, 0x7f0c0009

    const/4 v6, -0x1

    .line 396
    if-eqz p1, :cond_0

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    .line 399
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 400
    .local v0, "now":J
    sget v2, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    if-eq v2, v6, :cond_1

    iget-wide v2, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    sget v4, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    .line 402
    iget-boolean v2, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-nez v2, :cond_2

    .line 403
    const-string v2, "QRCodeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "we should not decode qrcode, mResumeTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resumetime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " decodetime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_2
    iget-boolean v2, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    sget v2, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    if-eq v2, v6, :cond_3

    .line 409
    iget-object v2, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    iget-object v2, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    sget v3, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    int-to-long v4, v3

    iget-wide v6, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    sub-long v6, v0, v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 412
    :cond_3
    return-void

    .line 400
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p1, "cameraDevice"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 268
    return-void
.end method

.method public setPreviewFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    .line 288
    return-void
.end method

.method public setPreviewLayoutSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 271
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    if-eq v0, p2, :cond_1

    .line 272
    :cond_0
    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    .line 273
    iput p2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    .line 274
    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect()V

    .line 276
    :cond_1
    return-void
.end method

.method public setTransposePreviewSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 279
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    if-eq v0, p1, :cond_1

    .line 280
    :cond_0
    iput p2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    .line 281
    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    .line 282
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->updateRectInPreview()V

    .line 284
    :cond_1
    return-void
.end method

.method public updateViewFinderRect()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect(Landroid/graphics/Point;)V

    .line 316
    return-void
.end method

.method public updateViewFinderRect(Landroid/graphics/Point;)V
    .locals 9
    .param p1, "area"    # Landroid/graphics/Point;

    .prologue
    const/4 v8, 0x0

    .line 291
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sget v7, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 292
    .local v5, "width":I
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sget v7, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 293
    .local v1, "height":I
    const/4 v2, 0x0

    .local v2, "left":I
    const/4 v4, 0x0

    .local v4, "top":I
    const/4 v3, 0x0

    .local v3, "right":I
    const/4 v0, 0x0

    .line 294
    .local v0, "bottom":I
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sub-int/2addr v6, v5

    div-int/lit8 v2, v6, 0x2

    .line 295
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sub-int/2addr v6, v1

    div-int/lit8 v4, v6, 0x2

    .line 296
    add-int v3, v2, v5

    .line 297
    add-int v0, v4, v1

    .line 298
    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 300
    if-eqz p1, :cond_0

    .line 301
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sget v7, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 302
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sget v7, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 303
    iget v6, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 304
    iget v6, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 305
    iget v6, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 306
    iget v6, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 307
    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 311
    :goto_0
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->updateRectInPreview()V

    .line 312
    return-void

    .line 309
    :cond_0
    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
