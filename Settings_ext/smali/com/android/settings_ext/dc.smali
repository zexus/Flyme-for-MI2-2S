.class Lcom/android/settings_ext/dc;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic ok:Lcom/android/settings_ext/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MediaFormat;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings_ext/dc;->ok:Lcom/android/settings_ext/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings_ext/dc;->ok:Lcom/android/settings_ext/MediaFormat;

    invoke-virtual {v0}, Lcom/android/settings_ext/MediaFormat;->finish()V

    .line 292
    return-void
.end method
