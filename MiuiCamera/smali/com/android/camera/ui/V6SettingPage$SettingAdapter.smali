.class Lcom/android/camera/ui/V6SettingPage$SettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "V6SettingPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6SettingPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/ui/V6SettingPage;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/V6SettingPage;)V
    .locals 2

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;->this$0:Lcom/android/camera/ui/V6SettingPage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 302
    invoke-virtual {p1}, Lcom/android/camera/ui/V6SettingPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 304
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;->this$0:Lcom/android/camera/ui/V6SettingPage;

    # getter for: Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;
    invoke-static {v0}, Lcom/android/camera/ui/V6SettingPage;->access$000(Lcom/android/camera/ui/V6SettingPage;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;->this$0:Lcom/android/camera/ui/V6SettingPage;

    # getter for: Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;
    invoke-static {v0}, Lcom/android/camera/ui/V6SettingPage;->access$000(Lcom/android/camera/ui/V6SettingPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;->this$0:Lcom/android/camera/ui/V6SettingPage;

    # getter for: Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/camera/ui/V6SettingPage;->access$100(Lcom/android/camera/ui/V6SettingPage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 313
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 323
    const-string v0, "Camera18"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;->this$0:Lcom/android/camera/ui/V6SettingPage;

    # getter for: Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/camera/ui/V6SettingPage;->access$100(Lcom/android/camera/ui/V6SettingPage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;->this$0:Lcom/android/camera/ui/V6SettingPage;

    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;->this$0:Lcom/android/camera/ui/V6SettingPage;

    # getter for: Lcom/android/camera/ui/V6SettingPage;->mKeys:Ljava/util/List;
    invoke-static {v0}, Lcom/android/camera/ui/V6SettingPage;->access$000(Lcom/android/camera/ui/V6SettingPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/camera/ui/V6SettingPage;->initializeIndicator(Landroid/view/LayoutInflater;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/camera/ui/V6SettingPage;->access$200(Lcom/android/camera/ui/V6SettingPage;Landroid/view/LayoutInflater;Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage$SettingAdapter;->this$0:Lcom/android/camera/ui/V6SettingPage;

    # getter for: Lcom/android/camera/ui/V6SettingPage;->mIndicators:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/camera/ui/V6SettingPage;->access$100(Lcom/android/camera/ui/V6SettingPage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    check-cast p2, Landroid/view/View;

    .line 328
    .restart local p2    # "convertView":Landroid/view/View;
    return-object p2
.end method
