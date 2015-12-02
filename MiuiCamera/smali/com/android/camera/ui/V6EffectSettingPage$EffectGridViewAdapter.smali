.class Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "V6EffectSettingPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6EffectSettingPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EffectGridViewAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/ui/V6EffectSettingPage;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/V6EffectSettingPage;)V
    .locals 2

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 216
    invoke-virtual {p1}, Lcom/android/camera/ui/V6EffectSettingPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 218
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0xc

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mViewList:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$000(Lcom/android/camera/ui/V6EffectSettingPage;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 227
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 237
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mViewList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mViewList:[Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/ui/V6EffectSettingPage;->access$000(Lcom/android/camera/ui/V6EffectSettingPage;)[Landroid/view/View;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mViewList:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$000(Lcom/android/camera/ui/V6EffectSettingPage;)[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mViewList:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$000(Lcom/android/camera/ui/V6EffectSettingPage;)[Landroid/view/View;

    move-result-object v0

    aget-object p2, v0, p1

    .line 242
    :cond_0
    if-nez p2, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    # invokes: Lcom/android/camera/ui/V6EffectSettingPage;->initializeIndicator(Landroid/view/LayoutInflater;I)V
    invoke-static {v0, v1, p1}, Lcom/android/camera/ui/V6EffectSettingPage;->access$100(Lcom/android/camera/ui/V6EffectSettingPage;Landroid/view/LayoutInflater;I)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mViewList:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$000(Lcom/android/camera/ui/V6EffectSettingPage;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/camera/ui/V6TitleImageView;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mOrientation:I
    invoke-static {v1}, Lcom/android/camera/ui/V6EffectSettingPage;->access$200(Lcom/android/camera/ui/V6EffectSettingPage;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6TitleImageView;->setOrientation(IZ)V

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$EffectGridViewAdapter;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mViewList:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$000(Lcom/android/camera/ui/V6EffectSettingPage;)[Landroid/view/View;

    move-result-object v0

    aget-object p2, v0, p1

    .line 247
    :cond_1
    return-object p2
.end method
