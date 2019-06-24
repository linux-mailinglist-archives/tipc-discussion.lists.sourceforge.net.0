Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F9D5040D
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 09:59:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfJsj-00072M-3r; Mon, 24 Jun 2019 07:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hfJsi-00072E-1p
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 07:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MGJ6U38u9kg9A9w/pYRC62pm74NVACWkpq9XfaU8sY4=; b=KB2+z0v0YcKLr3Og12rGH9ZaJD
 QQB2JUb2zb19Q2e20hV6zsC6uxJ5JUF3U+9cTYLyBpHnLKLZwUKNwlWiDfVXiu57pp4hTZ5M0OL03
 AKldlJ9OCwfTti3/ooGF5ZWWnuUNuWRNq2dnrXXLv/SndJTK47Jgu5dqYa6siwYykJOM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MGJ6U38u9kg9A9w/pYRC62pm74NVACWkpq9XfaU8sY4=; b=k8QGL3oL3CVzaf7H0cRWjM3abd
 7r0FgAPJsDU3wKqfa4QyXkNCHfV0wyWnAszfMxjXrTDz9ZTyvHT0QaE0lBwGKZ5TY+j7z8HDIB21A
 YEctunMlNVBksWHHnenrjigARr1hO3DLj9xQ50Y5K5NFn74wAvwq1hP1tsMWSzL+VSOs=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hfJsm-007U9j-Lw
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 07:59:21 +0000
Received: by mail-pf1-f195.google.com with SMTP id p184so7035662pfp.7
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 24 Jun 2019 00:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MGJ6U38u9kg9A9w/pYRC62pm74NVACWkpq9XfaU8sY4=;
 b=WNDOkEETcZ89O+7+2ZBc5hk3kK61etFN6xXvRkZaeXiuURDsmp2lFCTUDl1hLqWyNG
 4OV2OEIq+RbeT0CVdnn7Hl3g+TdMh51WRmudLM2pK/YIr+wEOFXjTGgjqEmNBXD/7kxj
 pGfsMOG2XidZZ+slFgXWjOko3vx3wbaKOojOWHpmY6wJ6KLuVGr/kN8aFkrL3m9NjNrq
 cYkawDL+vm+DSTVwh7nC3UDl94dwSPRsE9CESazhlCyWdzgEIAXBtJy3Dlq62orgHyAM
 DrYeTXIVkh9QC9ZiNBo1LMjCq8CL/aRu9vU5zxmaFzNw0y1q8NdUfCC4vKdFOk2cpA8y
 zFkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MGJ6U38u9kg9A9w/pYRC62pm74NVACWkpq9XfaU8sY4=;
 b=W5cdI7xJMn44uDFvBXgWiK3VStTtXdO27lwXzMVrOx3vu/j75BVgR7rWJxnopsVDDf
 99xv0LlnLqyzMee2K4Ks+G+F5dJFLjSaP4Nks4njx8ZyrlNMKHmZIlUAgCD7aRGhvUeG
 vzpb08fQUPeyL1HFjr7RraEKRhlal+i0Gh03J11UvPK4Comq/gZEv429JY2iwZ6WCdHo
 2cSG48nPjJ5wKWv1urjVmGif8Bxxh/JnlfPupSzoPHMVRDaA43hykuOi/jtjyNlze3DO
 /clGD8Ny8Pv1elqLJ9A3LTVZQIV+3zE+H+I8LhV1G3eAA80ORHI8VL7gDtVGHLcRcOny
 PiBw==
X-Gm-Message-State: APjAAAWsUTK5mG4mifG4+97OrnxNPKPhDPeF5+PeLWAns7eqvFezHnCu
 qnqGFX2xm4REr7OMdRIJx1k=
X-Google-Smtp-Source: APXvYqxAprCQVcNrN4zWvDsHJYXXv3CuOZglLYpMRa5eO55s99aoRzd+cXWbW8sNaCxrgJZF46G1DA==
X-Received: by 2002:a63:85c6:: with SMTP id
 u189mr20442525pgd.451.1561363154898; 
 Mon, 24 Jun 2019 00:59:14 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id r15sm12285518pfh.121.2019.06.24.00.59.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:59:14 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Mon, 24 Jun 2019 15:59:06 +0800
Message-Id: <4fd888cb669434b00dce24ace4410524665be285.1561363146.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hfJsm-007U9j-Lw
Subject: [tipc-discussion] [PATCH net] tipc: check msg->req data len in
 tipc_nl_compat_bearer_disable
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: syzkaller-bugs@googlegroups.com, tipc-discussion@lists.sourceforge.net,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This patch is to fix an uninit-value issue, reported by syzbot:

  BUG: KMSAN: uninit-value in memchr+0xce/0x110 lib/string.c:981
  Call Trace:
    __dump_stack lib/dump_stack.c:77 [inline]
    dump_stack+0x191/0x1f0 lib/dump_stack.c:113
    kmsan_report+0x130/0x2a0 mm/kmsan/kmsan.c:622
    __msan_warning+0x75/0xe0 mm/kmsan/kmsan_instr.c:310
    memchr+0xce/0x110 lib/string.c:981
    string_is_valid net/tipc/netlink_compat.c:176 [inline]
    tipc_nl_compat_bearer_disable+0x2a1/0x480 net/tipc/netlink_compat.c:449
    __tipc_nl_compat_doit net/tipc/netlink_compat.c:327 [inline]
    tipc_nl_compat_doit+0x3ac/0xb00 net/tipc/netlink_compat.c:360
    tipc_nl_compat_handle net/tipc/netlink_compat.c:1178 [inline]
    tipc_nl_compat_recv+0x1b1b/0x27b0 net/tipc/netlink_compat.c:1281

TLV_GET_DATA_LEN() may return a negtive int value, which will be
used as size_t (becoming a big unsigned long) passed into memchr,
cause this issue.

Similar to what it does in tipc_nl_compat_bearer_enable(), this
fix is to return -EINVAL when TLV_GET_DATA_LEN() is negtive in
tipc_nl_compat_bearer_disable(), as well as in
tipc_nl_compat_link_stat_dump() and tipc_nl_compat_link_reset_stats().

Reported-by: syzbot+30eaa8bf392f7fafffaf@syzkaller.appspotmail.com
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/netlink_compat.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
index c6a04c0..cf15506 100644
--- a/net/tipc/netlink_compat.c
+++ b/net/tipc/netlink_compat.c
@@ -445,7 +445,11 @@ static int tipc_nl_compat_bearer_disable(struct tipc_nl_compat_cmd_doit *cmd,
 	if (!bearer)
 		return -EMSGSIZE;
 
-	len = min_t(int, TLV_GET_DATA_LEN(msg->req), TIPC_MAX_BEARER_NAME);
+	len = TLV_GET_DATA_LEN(msg->req);
+	if (len <= 0)
+		return -EINVAL;
+
+	len = min_t(int, len, TIPC_MAX_BEARER_NAME);
 	if (!string_is_valid(name, len))
 		return -EINVAL;
 
@@ -539,7 +543,11 @@ static int tipc_nl_compat_link_stat_dump(struct tipc_nl_compat_msg *msg,
 
 	name = (char *)TLV_DATA(msg->req);
 
-	len = min_t(int, TLV_GET_DATA_LEN(msg->req), TIPC_MAX_LINK_NAME);
+	len = TLV_GET_DATA_LEN(msg->req);
+	if (len <= 0)
+		return -EINVAL;
+
+	len = min_t(int, len, TIPC_MAX_BEARER_NAME);
 	if (!string_is_valid(name, len))
 		return -EINVAL;
 
@@ -817,7 +825,11 @@ static int tipc_nl_compat_link_reset_stats(struct tipc_nl_compat_cmd_doit *cmd,
 	if (!link)
 		return -EMSGSIZE;
 
-	len = min_t(int, TLV_GET_DATA_LEN(msg->req), TIPC_MAX_LINK_NAME);
+	len = TLV_GET_DATA_LEN(msg->req);
+	if (len <= 0)
+		return -EINVAL;
+
+	len = min_t(int, len, TIPC_MAX_BEARER_NAME);
 	if (!string_is_valid(name, len))
 		return -EINVAL;
 
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
