.class Lcom/android/settings_ext/hi;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# instance fields
.field final synthetic zy:Lcom/android/settings_ext/hh;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/hh;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings_ext/hi;->zy:Lcom/android/settings_ext/hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 270
    if-ne p3, v0, :cond_1

    .line 271
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 279
    const/4 v0, 0x1

    .line 282
    :goto_1
    return v0

    :cond_0
    move-object v0, p1

    .line 275
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 282
    goto :goto_1
.end method
