.class Lcom/android/settings/wifi/bd;
.super Ljava/lang/Object;
.source "WpsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic axL:Lcom/android/settings/wifi/bc;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/bc;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/wifi/bd;->axL:Lcom/android/settings/wifi/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/bd;->axL:Lcom/android/settings/wifi/bc;

    iget-object v0, v0, Lcom/android/settings/wifi/bc;->axK:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsFragment;->b(Lcom/android/settings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->incrementProgressBy(I)V

    .line 192
    return-void
.end method
