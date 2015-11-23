.class Lcom/android/settings/wifi/aF;
.super Ljava/lang/Object;
.source "WifiShareUploadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic UE:I

.field final synthetic awT:Lcom/android/settings/wifi/aE;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/aE;I)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/wifi/aF;->awT:Lcom/android/settings/wifi/aE;

    iput p2, p0, Lcom/android/settings/wifi/aF;->UE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/aF;->awT:Lcom/android/settings/wifi/aE;

    iget-object v0, v0, Lcom/android/settings/wifi/aE;->awM:Lcom/android/settings/wifi/WifiShareUploadFragment;

    iget v1, p0, Lcom/android/settings/wifi/aF;->UE:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiShareUploadFragment;->dl(I)V

    .line 270
    return-void
.end method
