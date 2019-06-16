Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AE34738E
	for <lists+tipc-discussion@lfdr.de>; Sun, 16 Jun 2019 09:14:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hcPMm-0006Wl-Js; Sun, 16 Jun 2019 07:14:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hcPMl-0006We-Iy
 for tipc-discussion@lists.sourceforge.net; Sun, 16 Jun 2019 07:14:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8aRuqwL/ZwGa/nAFi+3X3Sar/jkAlcYGZXRFf14/gYw=; b=O9Nnc3lFcKgFMIP4Ai0S15ET8u
 dorVx7ZaCjMXG4+SR7PnhkeyB+O4YXW6ht7rycuUvBCOIFYhIEpQYsLw1j+9o5aCBLi4rqrzb8nvc
 i2dxRvM5UVVOghQVFh5GDlxKIrZ3Wl/t8OafOFq7Obfqhn8Vm9n72E0Gg6pqg4jOjzwI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8aRuqwL/ZwGa/nAFi+3X3Sar/jkAlcYGZXRFf14/gYw=; b=iTM+gM+SgRWKRPsyHD77r94iRw
 aQkWeCO+gtT7GuvDYndM3M7zDPJfObf9C3OV1H/Cd7iSkDzzrMw0ZDJqmcUqde7f4lw7cKvTKz0if
 xbZmqQrPbwlhZaYVTTsI1DNU+WiTMTrH1c+COgrTCO5sP3wHCmxRgrjQAPwkmq233sRo=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hcPMh-00FsYR-Hh
 for tipc-discussion@lists.sourceforge.net; Sun, 16 Jun 2019 07:14:14 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5G7CC6u031011
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Sun, 16 Jun 2019 00:12:27 -0700
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sun, 16 Jun
 2019 00:12:06 -0700
To: Xin Long <lucien.xin@gmail.com>, syzbot
 <syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com>
References: <000000000000000c060589a8bc66@google.com>
 <CADvbK_cMohjd3U=8H8ECT74rK85Tjy1FZYAXQQ_CsWgFq3c5gA@mail.gmail.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <ccbfc1eb-e371-d890-14ee-ec1429d4e751@windriver.com>
Date: Sun, 16 Jun 2019 15:02:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CADvbK_cMohjd3U=8H8ECT74rK85Tjy1FZYAXQQ_CsWgFq3c5gA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hcPMh-00FsYR-Hh
Subject: Re: [tipc-discussion] memory leak in tipc_buf_acquire
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
Cc: network dev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, tipc-discussion@lists.sourceforge.net,
 davem <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 6/10/19 2:44 AM, Xin Long wrote:
> Looks we need to purge each member's deferredq list in tipc_group_delete():
> diff --git a/net/tipc/group.c b/net/tipc/group.c
> index 992be61..23823eb 100644
> --- a/net/tipc/group.c
> +++ b/net/tipc/group.c
> @@ -218,6 +218,7 @@ void tipc_group_delete(struct net *net, struct
> tipc_group *grp)
> 
>   rbtree_postorder_for_each_entry_safe(m, tmp, tree, tree_node) {
>   tipc_group_proto_xmit(grp, m, GRP_LEAVE_MSG, &xmitq);
> + __skb_queue_purge(&m->deferredq);
>   list_del(&m->list);
>   kfree(m);
>   }

Good catch! I agree with you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
