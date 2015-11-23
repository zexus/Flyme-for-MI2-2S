.class Lcom/android/settings/wifi/am;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic avY:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/settings/wifi/am;->avY:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/settings/wifi/am;->avY:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->b(Lcom/android/settings/wifi/WifiSettings;)V

    .line 843
    iget-object v0, p0, Lcom/android/settings/wifi/am;->avY:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/am;->avY:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->c(Lcom/android/settings/wifi/WifiSettings;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 844
    iget-object v0, p0, Lcom/android/settings/wifi/am;->avY:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/WifiSettings;Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 845
    return-void
.end method
