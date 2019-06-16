Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C86473F0
	for <lists+tipc-discussion@lfdr.de>; Sun, 16 Jun 2019 11:24:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hcROk-0008Vb-FY; Sun, 16 Jun 2019 09:24:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hcROi-0008VH-Pi
 for tipc-discussion@lists.sourceforge.net; Sun, 16 Jun 2019 09:24:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QIw02wXd+ThSQCSaJvt5xwy2HCbNq0tOfROK68zcA00=; b=Jx8mDl3jCVIB9MuUhGnFCG0hn3
 CPIZVZR3F80x+Ltor1tLdwabtrZAdBfE62ZC1MdF3A/VTAY/LaYNT3xr3fcvbK0ax9bz9X2HH5wRM
 0I/aYf7avN+VbCrnUSdPcXs76Xy7yG53FZgYkw9aT58iUk4abXfM7mMl6sqkxssBgciU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QIw02wXd+ThSQCSaJvt5xwy2HCbNq0tOfROK68zcA00=; b=cdasRO4G/ws6oyomOCu9odLyPJ
 wT2zj2GVRgckEt9W0LdcjrpzAVQNCOgjGBE1pZX76oYbWVsrmk2fICeLOFc/E1heYTST7w11FOFXh
 x3X8QH+PxbsHQrVGcqdcXQXHNPS8kuseJbjqOyI8jLt7jCpn6B1hPhgnzY9nZM6Dzh5o=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hcROf-00AQsx-Np
 for tipc-discussion@lists.sourceforge.net; Sun, 16 Jun 2019 09:24:23 +0000
Received: by mail-pg1-f193.google.com with SMTP id k187so4096008pga.0
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 16 Jun 2019 02:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QIw02wXd+ThSQCSaJvt5xwy2HCbNq0tOfROK68zcA00=;
 b=naC+sKMNw9PAUsBUUfby7TlSCKkllJYXr9Ll2TIt2fO9IviNMrV+/S0uSYAl6Z1oQd
 EG9uzuliWahYJjnjRBVTvyHnEupcNld58uBElFjbJc2GCcBsCfrG9+SR94klCuy8Vlfn
 GoT3UZQznBe8tf5ve5ix9co2K1y7wJs2+S5mQLvl7dfKGvPcAlBznBwjwoSQj7K2nuxM
 DyhZ+JmDra/DWJhk76rFK/bDpXpifYTHUfchbDtwSoXrnkYsG7KW3gCtHiH4zFt1elDE
 8688B2XNR8rIW3WRGUwwNMPuEnOx2Ih+KGqlasde8hRA+tE2yt0rfIhwDA2GvDJz9agW
 SKoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QIw02wXd+ThSQCSaJvt5xwy2HCbNq0tOfROK68zcA00=;
 b=rcuk6kyRG+/PSs2LTeNQSYPAnXy5VsuBQk59hNlep8v4gQdaytlS/RK64ucuia/uSq
 Nej4DzHwDavGFH18snM5zsRT2WqcxfrAnG+3zQlv9iveHM1rTBBKZKDfmSSAcomHdK4h
 CiZSX3mRhV+fDlpCEBrcKmXERdZbgHIBLDU2cx9f0OsI2vpXsXKCmQmomipG2OmAQWkC
 U+BccTp0yWZx1TjuhaA6Hj5gCOmyEl0/H2aJAM+b2nmf6N1FVbwGQu2PTX46fsJ4zS9P
 o/2Qjfrss9V83CGV3NvS68Cfcy0YNjvzMAHBCtKPN/cleltNK23AkHQCR4d6uC0GDiog
 yfLg==
X-Gm-Message-State: APjAAAUvcGE6AxOSuVfP/sbmiK3Dfga8+MF/Mh2sjMBc6nQX6Yb9zgoN
 pPiuMMba6ZL/vR6q+UQA6UY=
X-Google-Smtp-Source: APXvYqy6KB+JyBjKSDuuyZGYgoHVzndzU19StpYZVklNw+y57wsD0TvskWBTLIz2kvLSfGDjwpzCPg==
X-Received: by 2002:aa7:80d9:: with SMTP id a25mr9718632pfn.50.1560677056010; 
 Sun, 16 Jun 2019 02:24:16 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id l7sm9564543pfl.9.2019.06.16.02.24.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Jun 2019 02:24:15 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Sun, 16 Jun 2019 17:24:07 +0800
Message-Id: <14ff2b79da7b9098fbff2919f0bc5a1afa33fe32.1560677047.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hcROf-00AQsx-Np
Subject: [tipc-discussion] [PATCH net] tipc: purge deferredq list for each
 grp member in tipc_group_delete
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

Syzbot reported a memleak caused by grp members' deferredq list not
purged when the grp is be deleted.

The issue occurs when more(msg_grp_bc_seqno(hdr), m->bc_rcv_nxt) in
tipc_group_filter_msg() and the skb will stay in deferredq.

So fix it by calling __skb_queue_purge for each member's deferredq
in tipc_group_delete() when a tipc sk leaves the grp.

Fixes: b87a5ea31c93 ("tipc: guarantee group unicast doesn't bypass group broadcast")
Reported-by: syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/group.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/tipc/group.c b/net/tipc/group.c
index 992be61..5f98d38 100644
--- a/net/tipc/group.c
+++ b/net/tipc/group.c
@@ -218,6 +218,7 @@ void tipc_group_delete(struct net *net, struct tipc_group *grp)
 
 	rbtree_postorder_for_each_entry_safe(m, tmp, tree, tree_node) {
 		tipc_group_proto_xmit(grp, m, GRP_LEAVE_MSG, &xmitq);
+		__skb_queue_purge(&m->deferredq);
 		list_del(&m->list);
 		kfree(m);
 	}
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
