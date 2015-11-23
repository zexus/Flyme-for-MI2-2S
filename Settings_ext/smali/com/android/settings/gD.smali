.class Lcom/android/settings_ext/gD;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic yt:Lcom/android/settings_ext/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/TetherSettings;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/settings_ext/gD;->yt:Lcom/android/settings_ext/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/settings_ext/gD;->yt:Lcom/android/settings_ext/TetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/TetherSettings;->a(Lcom/android/settings_ext/TetherSettings;I)V

    .line 589
    return-void
.end method
