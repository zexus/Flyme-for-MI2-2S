.class Lcom/android/settings/deviceinfo/Status$2;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# instance fields
.field final synthetic Tj:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$2;->Tj:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$2;->Tj:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->d(Lcom/android/settings/deviceinfo/Status;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$2;->Tj:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->e(Lcom/android/settings/deviceinfo/Status;)V

    .line 236
    return-void
.end method
