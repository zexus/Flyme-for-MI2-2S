.class final Lcom/android/settings/bluetooth/BluetoothSettings$4;
.super Lcom/android/settings/search/a;
.source "BluetoothSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6

    .prologue
    const v5, 0x7f090207

    .line 596
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 598
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 601
    new-instance v0, Lcom/android/settings/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 602
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 603
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    .line 604
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->nb()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 614
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 615
    new-instance v4, Lcom/android/settings/search/n;

    invoke-direct {v4, p1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 616
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 617
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    .line 618
    iput-boolean p2, v4, Lcom/android/settings/search/n;->enabled:Z

    .line 619
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 622
    :cond_0
    return-object v1
.end method
