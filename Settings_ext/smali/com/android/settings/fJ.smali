.class Lcom/android/settings_ext/fJ;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic vV:Lcom/android/settings_ext/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/settings_ext/fJ;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/fJ;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/RadioInfo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    :goto_0
    return-void

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    iget-object v1, p0, Lcom/android/settings_ext/fJ;->vV:Lcom/android/settings_ext/RadioInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM-specific Info/Settings Activity Not Found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings_ext/RadioInfo;->a(Lcom/android/settings_ext/RadioInfo;Ljava/lang/String;)V

    goto :goto_0
.end method
