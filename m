Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2685E28CBE4
	for <lists+tipc-discussion@lfdr.de>; Tue, 13 Oct 2020 12:42:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kSHlJ-00028V-Jk; Tue, 13 Oct 2020 10:42:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kSHlI-00028A-Em
 for tipc-discussion@lists.sourceforge.net; Tue, 13 Oct 2020 10:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TR/kKQ5a22WsaxOGvMb33ns37xEG5UPZOXwT/Wowk+M=; b=Ldc3gIxhmysCzmWzlCkJrOzGj3
 GyfgaeLvNMoJ5iaHSian2jVMLlwnC9uPcYB8dVDl/owFr5S0DCHrDIdD1UPTnfVNTjGKGQsp+2lcw
 pK0udAZwBB2d5DKhME4x9AKx07Rvaz0qQ0r1HmAqMAxSBsxn++yxmNuVXbQS0kLi/Cxw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TR/kKQ5a22WsaxOGvMb33ns37xEG5UPZOXwT/Wowk+M=; b=O69UEQCxva6HRdSgo1TdThrhEc
 BimtkeRF76KTPp1GskOK+hUryi6Kbupe/3un0GtD0Vu5sIaRZYoxzfYilOtv2lQ81MTailaLyS1rq
 rnwf9Bazexr2gK/HPkQhkZDhGBaRSXVwtQw4Dgtwpe/ChiZMV/fjb9Hjv/rxW1dHHubs=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kSHl9-008Xyc-H2
 for tipc-discussion@lists.sourceforge.net; Tue, 13 Oct 2020 10:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602585737;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TR/kKQ5a22WsaxOGvMb33ns37xEG5UPZOXwT/Wowk+M=;
 b=C9FIvch8gzwci070zRHZjM+x6EDKl42CuU3vfaY2PgtupNEA/MFDt7G0pHUdzQUWja4fcS
 snUj9GbVakOaBqZjmld9wT/O10qN7wtWgquU+bMiairlgDLsv4dzcBp3DI5nd/hwz+Jnop
 VYuprwPUYkIaAhNNtfpAo+QEmIfm3yo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-447-7NEMuv7WP6y5dg9UWvQobw-1; Tue, 13 Oct 2020 06:42:13 -0400
X-MC-Unique: 7NEMuv7WP6y5dg9UWvQobw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BDEF18BE161;
 Tue, 13 Oct 2020 10:42:12 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 507C75C1C2;
 Tue, 13 Oct 2020 10:42:11 +0000 (UTC)
To: Tung Nguyen <tung.q.nguyen@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com
References: <20201005103432.14732-1-tung.q.nguyen@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <ab9f1cd1-4c1b-a688-4fce-0ed2c1b96fc0@redhat.com>
Date: Tue, 13 Oct 2020 06:42:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201005103432.14732-1-tung.q.nguyen@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kSHl9-008Xyc-H2
Subject: Re: [tipc-discussion] [net v1 1/1] tipc: Fix memory leak in
 tipc_link_xmit
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 10/5/20 6:34 AM, Tung Nguyen wrote:
> In case the backlog transmit queue for system-importance messages is
> overloaded, tipc_link_xmit() returns -ENOBUFS but the skb list is not
> purged. This leads to memory leak and failure when a skb is allocated.
>
> This commit fixes this issue by purging the skb list before
> tipc_link_xmit() returns.
>
> Reported-by: Thang Hoang Ngo <thang.h.ngo@dektech.com.au>
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>   net/tipc/link.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index cef38a910107..ca0bb09482d0 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1028,6 +1028,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
>   	if (unlikely(l->backlog[imp].len >= l->backlog[imp].limit)) {
>   		if (imp == TIPC_SYSTEM_IMPORTANCE) {
>   			pr_warn("%s<%s>, link overflow", link_rst_msg, l->name);
> +			__skb_queue_purge(list);
>   			return -ENOBUFS;
>   		}
>   		rc = link_schedule_user(l, hdr);
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
