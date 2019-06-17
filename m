Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3CA47845
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Jun 2019 04:54:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hchmw-0006BF-Ju; Mon, 17 Jun 2019 02:54:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hchmt-0006Az-K5
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 02:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ALr1BWYnxqIkorG0xPSgfd3dp7iW+Ed/yVPE+b/g3CE=; b=MsIvbdZh5aIfwhrDxUolVEmFin
 GEP0a5emNVBeHC3J4Vdtk6dOPL3yqkTE1lbgSFbQk7+QAzpGc5D8yADzcx4CLKNyG1/ZCmGfreopK
 wOyL0lFD/a7oEmyWjwfnAIgh0mMYdJsIpRZ3YSNs9e8BkhXD2YVLOjKDzuRGqt61dgDo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ALr1BWYnxqIkorG0xPSgfd3dp7iW+Ed/yVPE+b/g3CE=; b=VMTj14j2o1efv1mkBRGiYOJARq
 /aAxs2DTsGxfX+WJRGxgJDOeau7HikiTdcsFOCgryOF2wCKuNGzDXPcu0ADacciSopmSBysXxlseA
 nkwx6806sbWHPMVfhWWr2ha6GfB/9/ZE0lJTd9JM1RSigh1NnCs+gre4pGUSk579xJyA=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hchmn-000UKs-LZ
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 02:54:25 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5H2qO12026851
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Sun, 16 Jun 2019 19:52:39 -0700
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sun, 16 Jun
 2019 19:52:30 -0700
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>
References: <14ff2b79da7b9098fbff2919f0bc5a1afa33fe32.1560677047.git.lucien.xin@gmail.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <1f6b032c-9f63-6c70-b71b-5afae0093179@windriver.com>
Date: Mon, 17 Jun 2019 10:42:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <14ff2b79da7b9098fbff2919f0bc5a1afa33fe32.1560677047.git.lucien.xin@gmail.com>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hchmn-000UKs-LZ
Subject: Re: [tipc-discussion] [PATCH net] tipc: purge deferredq list for
 each grp member in tipc_group_delete
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 6/16/19 5:24 PM, Xin Long wrote:
> Syzbot reported a memleak caused by grp members' deferredq list not
> purged when the grp is be deleted.
> 
> The issue occurs when more(msg_grp_bc_seqno(hdr), m->bc_rcv_nxt) in
> tipc_group_filter_msg() and the skb will stay in deferredq.
> 
> So fix it by calling __skb_queue_purge for each member's deferredq
> in tipc_group_delete() when a tipc sk leaves the grp.
> 
> Fixes: b87a5ea31c93 ("tipc: guarantee group unicast doesn't bypass group broadcast")
> Reported-by: syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/group.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/tipc/group.c b/net/tipc/group.c
> index 992be61..5f98d38 100644
> --- a/net/tipc/group.c
> +++ b/net/tipc/group.c
> @@ -218,6 +218,7 @@ void tipc_group_delete(struct net *net, struct tipc_group *grp)
>  
>  	rbtree_postorder_for_each_entry_safe(m, tmp, tree, tree_node) {
>  		tipc_group_proto_xmit(grp, m, GRP_LEAVE_MSG, &xmitq);
> +		__skb_queue_purge(&m->deferredq);
>  		list_del(&m->list);
>  		kfree(m);
>  	}
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
