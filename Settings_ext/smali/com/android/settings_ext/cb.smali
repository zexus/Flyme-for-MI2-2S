.class Lcom/android/settings_ext/cb;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic kt:Lcom/android/settings_ext/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DreamSettings;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings_ext/cb;->kt:Lcom/android/settings_ext/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ext/cb;->kt:Lcom/android/settings_ext/DreamSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/DreamSettings;->showDialog(I)V

    .line 157
    return-void
.end method
