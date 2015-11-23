.class Lcom/android/settings/dashboard/i;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic Ry:Lcom/android/settings/dashboard/h;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/h;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/dashboard/i;->Ry:Lcom/android/settings/dashboard/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .prologue
    .line 170
    add-int/lit8 v0, p3, -0x1

    .line 174
    if-gez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/i;->Ry:Lcom/android/settings/dashboard/h;

    invoke-static {v1}, Lcom/android/settings/dashboard/h;->a(Lcom/android/settings/dashboard/h;)Lcom/android/settings/dashboard/l;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/dashboard/l;->a(Lcom/android/settings/dashboard/l;)Landroid/database/Cursor;

    move-result-object v2

    .line 179
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 181
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 183
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    const/16 v0, 0xd

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 186
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->Ry:Lcom/android/settings/dashboard/h;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    .line 187
    invoke-virtual {v0}, Lcom/android/settings/gh;->gN()V

    .line 189
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 191
    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/hl;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->Ry:Lcom/android/settings/dashboard/h;

    invoke-static {v0}, Lcom/android/settings/dashboard/h;->b(Lcom/android/settings/dashboard/h;)V

    goto :goto_0

    .line 195
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const/16 v3, 0xa

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    const/16 v5, 0xb

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 202
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    :cond_2
    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {v0, v1}, Lcom/android/settings/gh;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
