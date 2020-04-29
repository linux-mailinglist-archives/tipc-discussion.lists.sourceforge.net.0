Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FB51BE321
	for <lists+tipc-discussion@lfdr.de>; Wed, 29 Apr 2020 17:51:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jTozi-0004eT-0G; Wed, 29 Apr 2020 15:51:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jTozg-0004eL-JU
 for tipc-discussion@lists.sourceforge.net; Wed, 29 Apr 2020 15:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fBDiX8UJxcq78wNXl3EwsqKs1jQ6m+o5VkeJyOgmq1Y=; b=QT0N2Ke3cSJHK1ggpw7cVp/2A7
 vqnltTsC1XbqccgzWUWkuHns9+8Jg/cDIBJy+SfETo0jEuZGnaJ8Uyyq2iGqrsNVgwYJQSSOIeNqC
 WjmKat8hbN6049medinHg2mV9bHDlDIHmUVgDW+iNz79lTeYah/9WNsec46OzpiFz21w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fBDiX8UJxcq78wNXl3EwsqKs1jQ6m+o5VkeJyOgmq1Y=; b=mvS+sCxds3W4PRiIetrhGMSB0m
 x8dMqftgeZqxB/OoqoIz7FjqtpO/hCy/eH9hrMzSTEZzHQjBfttI+1ViasDJbJEB2WOdsVzviuUbk
 EWmlXnL/+yedO+5rej0HyjM96++rSgtf6JtbDNgMyBeo8HWbhg7WRn8gmmwIZ5fidmnw=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jToze-0044QB-Hv
 for tipc-discussion@lists.sourceforge.net; Wed, 29 Apr 2020 15:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588175480;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fBDiX8UJxcq78wNXl3EwsqKs1jQ6m+o5VkeJyOgmq1Y=;
 b=GmXug7l/x9rD43TZDpnzxQe0xfNl5nJO43Vorcrw5K3NFBGFwpugWkfBSV40H4KkqOlpQr
 v6bRTpzcS3zAePAyV5urCv18lTwn3f4v74UX+qyXC34xTRraoM+oUL0K/vKpyOfJDSs5XG
 z7Gvvv5svRN8p5VLQoFl6ge0o+g12Hs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-aLB_oJRDN-OzWaU95shUbA-1; Wed, 29 Apr 2020 11:51:16 -0400
X-MC-Unique: aLB_oJRDN-OzWaU95shUbA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C87218014D6;
 Wed, 29 Apr 2020 15:51:14 +0000 (UTC)
Received: from [10.10.112.203] (ovpn-112-203.rdu2.redhat.com [10.10.112.203])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B489C60C18;
 Wed, 29 Apr 2020 15:51:13 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200428085826.15412-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <d18379a8-3eb5-914a-8d3a-23376eb2bdc7@redhat.com>
Date: Wed, 29 Apr 2020 11:51:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200428085826.15412-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jToze-0044QB-Hv
Subject: Re: [tipc-discussion] [net] tipc: fix partial topology connection
 closure
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
Cc: tipc-dek@dektech.com.au
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 4/28/20 4:58 AM, Tuong Lien wrote:
> When an application connects to the TIPC topology server and subscribes
> to some services, a new connection is created along with some objects -
> 'tipc_subscription' to store related data correspondingly...
> However, there is one omission in the connection handling that when the
> connection or application is orderly shutdown (e.g. via SIGQUIT, etc.),
> the connection is not closed in kernel, the 'tipc_subscription' objects
> are not freed too.
> This results in:
> - The maximum number of subscriptions (65535) will be reached soon, new
> subscriptions will be rejected;
> - TIPC module cannot be removed (unless the objectes are somehow forced
> to release first);
>
> The commit fixes the issue by closing the connection if the 'recvmsg()'
> returns '0' i.e. when the peer is shutdown gracefully. It also includes
> the other unexpected cases.
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/topsrv.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> index ad78f7cff379..c364335623ab 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -405,10 +405,11 @@ static int tipc_conn_rcv_from_sock(struct tipc_conn *con)
>   		read_lock_bh(&sk->sk_callback_lock);
>   		ret = tipc_conn_rcv_sub(srv, con, &s);
>   		read_unlock_bh(&sk->sk_callback_lock);
> +		if (!ret)
> +			return 0;
>   	}
> -	if (ret < 0)
> -		tipc_conn_close(con);
>   
> +	tipc_conn_close(con);
>   	return ret;
>   }
>   
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
