.class Lcom/android/settings/cP;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic no:I

.field final synthetic np:Lcom/android/settings/LocalePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePicker;I)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/cP;->np:Lcom/android/settings/LocalePicker;

    iput p2, p0, Lcom/android/settings/cP;->no:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/cP;->np:Lcom/android/settings/LocalePicker;

    iget v1, p0, Lcom/android/settings/cP;->no:I

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->removeDialog(I)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/cP;->np:Lcom/android/settings/LocalePicker;

    invoke-virtual {v0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/cP;->np:Lcom/android/settings/LocalePicker;

    invoke-static {v0}, Lcom/android/settings/LocalePicker;->a(Lcom/android/settings/LocalePicker;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 138
    return-void
.end method
