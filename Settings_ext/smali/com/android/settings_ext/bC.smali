.class Lcom/android/settings_ext/bC;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic jt:Lcom/android/settings_ext/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DeviceAdminAdd;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings_ext/bC;->jt:Lcom/android/settings_ext/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings_ext/bC;->jt:Lcom/android/settings_ext/DeviceAdminAdd;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/DeviceAdminAdd;->a(Landroid/view/View;)V

    .line 253
    return-void
.end method