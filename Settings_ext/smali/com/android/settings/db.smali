.class Lcom/android/settings/db;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ok:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings/db;->ok:Lcom/android/settings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/db;->ok:Lcom/android/settings/MediaFormat;

    invoke-static {v0}, Lcom/android/settings/MediaFormat;->c(Lcom/android/settings/MediaFormat;)V

    goto :goto_0
.end method
