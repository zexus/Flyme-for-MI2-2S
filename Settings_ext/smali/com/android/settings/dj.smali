.class Lcom/android/settings_ext/dj;
.super Ljava/lang/Object;
.source "MiuiApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic or:Lcom/android/settings_ext/MiuiApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiApnEditor;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ext/dj;->or:Lcom/android/settings_ext/MiuiApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/dj;->or:Lcom/android/settings_ext/MiuiApnEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/MiuiApnEditor;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings_ext/dj;->or:Lcom/android/settings_ext/MiuiApnEditor;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiApnEditor;->finish()V

    .line 55
    :cond_0
    return-void
.end method
