.class Lcom/android/settings/wifi/aW;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic axu:Lcom/android/settings/wifi/aV;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/aV;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/wifi/aW;->axu:Lcom/android/settings/wifi/aV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/aW;->axu:Lcom/android/settings/wifi/aV;

    iget-object v0, v0, Lcom/android/settings/wifi/aV;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->b(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 199
    return-void
.end method
