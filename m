Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 922DE2DA285
	for <lists+tipc-discussion@lfdr.de>; Mon, 14 Dec 2020 22:24:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kovKG-0001GG-Q1; Mon, 14 Dec 2020 21:24:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kovK0-0001FS-Ck
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Dec 2020 21:23:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2qRIUmg8kaAY2fou0yaPPkvsFn/OibG40ve4lbUz5cY=; b=SfDP9SIy0ersQR0G4exZIMRmmK
 Z6xudqex48QTO+eB8efIUw6apynfrKiYyryJwwWD0GxYRmgSQNH1QXPis/K92yBWf1hjzw329fh2k
 3TZ9rLqGgcJi87IIPbuXgjHLHc7wmKyt4DeiOXXF7mM+Kkq/9nP6r5sX+HUXPC0SJSTY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2qRIUmg8kaAY2fou0yaPPkvsFn/OibG40ve4lbUz5cY=; b=Ren/4kOWflRazqFvGb9t71a2uM
 nS0FSXs77sPVegZ9nac3Bs5Ku8xf5qWIEoHO/2k63tqX0oDkH5JC4/rpUpONxPLGyaYJ7ESC7DotW
 9pYL8JU66XuK2QtVDoL0e1EXoc+Q6jA3vFIS8UalgYcoH+xNQuL4xKGMxdum8qPn4TQs=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kovJy-00E8lj-95
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Dec 2020 21:23:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607981020;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2qRIUmg8kaAY2fou0yaPPkvsFn/OibG40ve4lbUz5cY=;
 b=b08og9G8ZKFqw/DH3XF/RsRbAmqtdmVb8M8HwSflfUFyNJVwzb53JtwN4SnmUd5CLnJeA1
 OZSN3uN0CCdg+CYPB7ro6CB8tlBaWqmLNLQyDHdPRUeSaF2ODpY42UT+w5YjmOXIhfI40Z
 6qI1EcL3krF847DWZIlqWFzY/YLYpF0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-rZfjuqUZOluWGEV6-8Yr4A-1; Mon, 14 Dec 2020 16:23:38 -0500
X-MC-Unique: rZfjuqUZOluWGEV6-8Yr4A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 387F2192D786;
 Mon, 14 Dec 2020 21:23:37 +0000 (UTC)
Received: from [10.10.117.199] (ovpn-117-199.rdu2.redhat.com [10.10.117.199])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DC2AB10023AD;
 Mon, 14 Dec 2020 21:23:35 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net, ying.xue@windriver.com
References: <20201211113239.4482-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <5c39b2a7-2083-3dbe-d3a3-3a531ee3b292@redhat.com>
Date: Mon, 14 Dec 2020 16:23:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201211113239.4482-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
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
X-Headers-End: 1kovJy-00E8lj-95
Subject: Re: [tipc-discussion] [net-next] tipc: do sanity check payload of a
 netlink message
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



On 12/11/20 6:32 AM, Hoang Huu Le wrote:
> From: Hoang Le <hoang.h.le@dektech.com.au>
>
> We initialize nlmsghdr without any payload in tipc_nl_compat_dumpit(),
> then, result of calling parse attributes always fails and return with
> '-EINVAL' error.
When we initialize nlmsghdr with no payload inside 
tipc_nl_compat_dumpit() the
parsing function returns -EINVAL. We fix it by making the parsing call 
conditional.
>
> To fix error returning when parsing attributes of a netlink message,
> we do a sanity check the length of message payload.
>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/netlink_compat.c | 12 +++++++-----
>   1 file changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
> index 82f154989418..5a1ce64039f7 100644
> --- a/net/tipc/netlink_compat.c
> +++ b/net/tipc/netlink_compat.c
> @@ -213,12 +213,14 @@ static int __tipc_nl_compat_dumpit(struct tipc_nl_compat_cmd_dump *cmd,
>   	}
>   
>   	info.attrs = attrbuf;
> -	err = nlmsg_parse_deprecated(cb.nlh, GENL_HDRLEN, attrbuf,
> -				     tipc_genl_family.maxattr,
> -				     tipc_genl_family.policy, NULL);
> -	if (err)
> -		goto err_out;
>   
> +	if (nlmsg_len(cb.nlh) > 0) {
> +		err = nlmsg_parse_deprecated(cb.nlh, GENL_HDRLEN, attrbuf,
> +					     tipc_genl_family.maxattr,
> +					     tipc_genl_family.policy, NULL);
> +		if (err)
> +			goto err_out;
> +	}
>   	do {
>   		int rem;
>   
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
