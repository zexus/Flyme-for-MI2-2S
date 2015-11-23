.class Lcom/android/settings/wifi/f;
.super Ljava/lang/Object;
.source "MiuiAccessPoint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic asQ:Lcom/android/settings/wifi/e;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/e;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/wifi/f;->asQ:Lcom/android/settings/wifi/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/f;->asQ:Lcom/android/settings/wifi/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/wifi/e;->asO:Z

    .line 200
    return-void
.end method
