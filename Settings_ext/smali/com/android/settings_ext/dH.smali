.class Lcom/android/settings_ext/dH;
.super Ljava/lang/Object;
.source "MiuiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic pD:Lcom/android/settings_ext/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiDisplaySettings;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/settings_ext/dH;->pD:Lcom/android/settings_ext/MiuiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings_ext/dH;->pD:Lcom/android/settings_ext/MiuiDisplaySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiDisplaySettings;->a(Lcom/android/settings_ext/MiuiDisplaySettings;Z)V

    .line 207
    return-void
.end method
