.class Lcom/android/settings_ext/fV;
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
    .line 926
    iput-object p1, p0, Lcom/android/settings_ext/fV;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 928
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.settings.FdnList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    iget-object v1, p0, Lcom/android/settings_ext/fV;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 937
    const/4 v0, 0x1

    return v0
.end method
