Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5301C518AC
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 18:28:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfRpb-0006vP-OR; Mon, 24 Jun 2019 16:28:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hfRpW-0006ug-Mu
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 16:28:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=83z9MONIXRv9fBBn1KzHdssv0tegBm2CExMBDwk9bQw=; b=CyKm5smNZFhMckR5L6sMa0uWkI
 2H8rhsTSdamYqcoLg1nYKuTB/0gA2YDtaQBvnhrwHJnzxSuLBlW8Rmp9WR57Pm8O/e2c7jHO1+f/Q
 Zxaj1K8q6pMdRju9VWH2cvIu+z5CQXLuvV42rCw9Un6U5cpBdT7dCcwhOrMayFfr8EFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=83z9MONIXRv9fBBn1KzHdssv0tegBm2CExMBDwk9bQw=; b=YGU9qboyJs/Aq79LRLbNZNp6jz
 rqx5xjDtYN/46N1FJyGBTdkmtgTZMgJqa7z0XM0ensL24TrezKagIIiAH63sZQ14FOD7NI9eCeXPL
 Wn+4wqPCQHScXBomNDirc3ziQSQ3kokZlLchxHXq8bPMOt0EZzDyBrbEU/dZnWt4oRg8=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hfRpZ-00CHqn-8W
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 16:28:34 +0000
Received: by mail-pg1-f195.google.com with SMTP id k13so1221026pgq.9
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 24 Jun 2019 09:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=83z9MONIXRv9fBBn1KzHdssv0tegBm2CExMBDwk9bQw=;
 b=EIFFnYWlXLF0BEqdMqYG20aPVNojU1l7RF30JxVkmbB98K7FF6gOhgtIeSk7aI1hzQ
 yO2+oD+R9EqcauIPf16qiSzW7QFVoqIZzJk5/iWQuQYM6afOCpFcsB7/Zg1lNdrCPvHt
 kax8lbUsIZa3dbzxpvr4rITPSzPA4XWg/Flp68+TWSqhnqOlyoL95hBrm/cLo0hb0Gyp
 f7/dITp8FKGl2XXr6X90p4PbWL6QQ75uoCEkKVnGXs5XUliv8FTRaTX2JQw6zGGmzJAp
 1VycskLh1sRbc7wCYtgDmuQLV2WpkL6+agA+R26CIefVH3fOTKVzxKOLYfYdetHNdWRt
 oNiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=83z9MONIXRv9fBBn1KzHdssv0tegBm2CExMBDwk9bQw=;
 b=etOLSpunMeQM4FaQJGXPDtUn07BlDZlgoyiV8QI30FcWiJtBdlpW0tfl2dA0KRPJuB
 YIKEOS2t1d8wfUtANUq504LpFkwphEfMlNtpbTEJgx1Y1EZGMTLAyuCcEHiMRjkJQ6nQ
 QaxeDAHZZuAqKCJ2xbS5JclPXPc8FouwJ+XVEFiO0Eeo5QSH4dPT8qYMB5UMAjf9vGns
 etaR/mZejJmz9TGl/ZuQAxPaQz3A4IxrPx309Epu2/43cyDYFZLEmjnsQO1fxElPF5qu
 5m+2PgxnafQDdA7Lhog3cC+V6g2cXJsUTPkGL+5waWPL7xEyGuY/wATou3EPbQ8W4TNT
 YuPw==
X-Gm-Message-State: APjAAAUY/Otwjs4a0upQWBLwtqCs5LdQO7b43KbfnvTuQa6+gKDMOEcY
 2VTT3hQnoO0bQzMGRGc6z3luPQzT
X-Google-Smtp-Source: APXvYqylrliEPCXf6k1P5k4XUbLBqv6VeEpmWsZNxNJn1fxjtuiyi3iWX5xqAlgkA+Mq3LVRGGFkcQ==
X-Received: by 2002:a63:c508:: with SMTP id f8mr34435737pgd.48.1561393707527; 
 Mon, 24 Jun 2019 09:28:27 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id q3sm10884826pgv.21.2019.06.24.09.28.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 09:28:26 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Tue, 25 Jun 2019 00:28:19 +0800
Message-Id: <58c46f0c73a4c1aea970e52de69188e2dd20d3b4.1561393699.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hfRpZ-00CHqn-8W
Subject: [tipc-discussion] [PATCHv2 net] tipc: check msg->req data len in
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
Cc: syzkaller-bugs@googlegroups.com, Eric Dumazet <edumazet@google.com>,
 tipc-discussion@lists.sourceforge.net, davem@davemloft.net
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

v1->v2:
  - add the missing Fixes tags per Eric's request.

Fixes: 0762216c0ad2 ("tipc: fix uninit-value in tipc_nl_compat_bearer_enable")
Fixes: 8b66fee7f8ee ("tipc: fix uninit-value in tipc_nl_compat_link_reset_stats")
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
