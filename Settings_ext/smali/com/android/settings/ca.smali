.class Lcom/android/settings_ext/ca;
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
    .line 142
    iput-object p1, p0, Lcom/android/settings_ext/ca;->kt:Lcom/android/settings_ext/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ext/ca;->kt:Lcom/android/settings_ext/DreamSettings;

    invoke-static {v0}, Lcom/android/settings_ext/DreamSettings;->a(Lcom/android/settings_ext/DreamSettings;)Lcom/android/settings_ext/bX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/bX;->dh()V

    .line 146
    return-void
.end method
