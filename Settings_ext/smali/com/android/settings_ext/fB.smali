.class Lcom/android/settings_ext/fB;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic vV:Lcom/android/settings_ext/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/settings_ext/fB;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/settings_ext/fB;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->n(Lcom/android/settings_ext/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 960
    const/4 v0, 0x1

    return v0
.end method
