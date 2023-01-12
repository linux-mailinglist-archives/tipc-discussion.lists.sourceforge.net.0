Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC87C66675C
	for <lists+tipc-discussion@lfdr.de>; Thu, 12 Jan 2023 01:04:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pFl4a-0003Ic-EY;
	Thu, 12 Jan 2023 00:03:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1pFl4Y-0003IW-HM
 for tipc-discussion@lists.sourceforge.net;
 Thu, 12 Jan 2023 00:03:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jwCZAMsC9LdHVHCj+HUDQ9F+tK+i5VTKJcAceNAQOqA=; b=bELcu9svmnf/vuLrri9qHfWxF0
 VXoFGws4xDoHIzcDn//0tijta6R7ktme1FMohK7sXK/n6irLeMaYxXq0E6hvcc7W7IwqRq6qzscaF
 bTLTCW51LAZ6YoPiaR8Gbk9iREgLowu+s3aDo5n1sqM+qRnDD5pzTKdYfTSZ6yvQQGLQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jwCZAMsC9LdHVHCj+HUDQ9F+tK+i5VTKJcAceNAQOqA=; b=WdBU+gIqQSHkiEZHv5vMaI0uZl
 fJ6aIKiTu22vo1QlUeR29Xd8o5Wlq/2yE/7aur+7szHtmpJXmlRsupKTzfaGUJsSUwvG48acTWNWU
 LHL00MYi6iJXx8Gk6l+5faOO7lE0NC9hzJm7LPGC9+eFLFM2Vc958siID40gChZNK1lQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pFl4T-000FlO-4I for tipc-discussion@lists.sourceforge.net;
 Thu, 12 Jan 2023 00:03:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673481826;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jwCZAMsC9LdHVHCj+HUDQ9F+tK+i5VTKJcAceNAQOqA=;
 b=dkeF14LAp/j1i3D86WQU+MDF3R0R+5HI9pP+73heTyoabxPm7693mIg7OzUXaR/6dAZjtN
 Jgle0jDM4PLKt6XgC0LkWAZ/fWSSlmu3aepjVIqG8et3UKRXaWVsGpv0UZxmhylbTuCLQI
 gv0Ln2TLFJUbOhpHWAV3jvtE9NHaVt8=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-537-VfSY6QCJMFeCMgor1VdCNg-1; Wed, 11 Jan 2023 19:03:45 -0500
X-MC-Unique: VfSY6QCJMFeCMgor1VdCNg-1
Received: by mail-yw1-f200.google.com with SMTP id
 00721157ae682-4597b0ff5e9so178589227b3.10
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 11 Jan 2023 16:03:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jwCZAMsC9LdHVHCj+HUDQ9F+tK+i5VTKJcAceNAQOqA=;
 b=5lGVgMkDtbLe2Ll8EA/pQcTaUP9k8juO0IIA6cci2inUR8iwxKMW4oYnZPHSoSxdpA
 nhpqsNqklkMg++AhevZdBao3VL3SZgr13RZbB6PBETRWG54U9lNceCpHf7MrUCMwK/z6
 87LPwUhfnnmblIoS9X1gdzjwtlQzoNmpCWl+cz3hTiEnH31AhsCwQhogpUc8r9rbqIgs
 isutIybggfxs6CcVaDGpUjHkr3UgsVDHp+QTy8Ao7eOC920a1m2itrkbDOiIpJxvGODc
 LjoRrbEMteusVGAVwYXHuAqLKKKiBTvLSVqFTPHK0xok4lgP5QVvpMz86KE6AqsMqXyK
 BoNw==
X-Gm-Message-State: AFqh2kpofLLUKOlxt/0itiLpjAeoYb8cAquh3u7al7m/zMPN5rkNpN7I
 O7zqCa5K9xqs2VLw+IDLZM/kT19lpakiJR+xox6ODi/qw1YVQOvM+ijYzSMn1hcqh4kC/bPGmc4
 +hJcADBXMiCJ18pdO2OBoQmIjTFra6vQjfXdde6Q3UmrI3+hb6je/2P0C1GLlpkQqo6Ys8V44CW
 QAtQM1k6cBQw==
X-Received: by 2002:a05:690c:c87:b0:3d4:15b4:a612 with SMTP id
 cm7-20020a05690c0c8700b003d415b4a612mr22982894ywb.38.1673481824842; 
 Wed, 11 Jan 2023 16:03:44 -0800 (PST)
X-Google-Smtp-Source: AMrXdXuPBXOU23pKBwlFTN1vomRq5DLX83XoGwqX0fL0oqGvu90qXn38B4DvMk5Z3Dl9KvrQ4fKpew==
X-Received: by 2002:a05:690c:c87:b0:3d4:15b4:a612 with SMTP id
 cm7-20020a05690c0c8700b003d415b4a612mr22982870ywb.38.1673481824494; 
 Wed, 11 Jan 2023 16:03:44 -0800 (PST)
Received: from [10.0.0.97] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 u12-20020a05620a430c00b006ee949b8051sm9794188qko.51.2023.01.11.16.03.43
 for <tipc-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Jan 2023 16:03:43 -0800 (PST)
Message-ID: <1a27e0f1-2b72-57ce-6df4-3d575b225201@redhat.com>
Date: Wed, 11 Jan 2023 19:03:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: tipc-discussion@lists.sourceforge.net
References: <CALiWOen2U-RYnPV2187uo9+7GjY5wS_nR43kCXDgJzycU9vT9g@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <CALiWOen2U-RYnPV2187uo9+7GjY5wS_nR43kCXDgJzycU9vT9g@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2023-01-06 15:51, Asebot Fasil Abebe wrote: > Hi folks,
 > > I'd like to understand the expected behavior when a member of a group
 is > slow to pick up a group multicast/broadcast message. From what [...]
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pFl4T-000FlO-4I
Subject: Re: [tipc-discussion] A slow message receiver member slowing the
 group multicasting for all members
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

On 2023-01-06 15:51, Asebot Fasil Abebe wrote:
> Hi folks,
>
> I'd like to understand the expected behavior when a member of a group is
> slow to pick up a group multicast/broadcast message. From what I'm
> observing on my testing, it seem to slow down the whole messaging bus.
> Please confirm and advise on a workaround if any.
That is the way it works, and there is no obvious workaround, except 
letting the member leave the group.
The whole concept is based on synchronized reception, although not as 
restrictive as ABCAST.
Some receivers are allowed to get ahead of others, but only to a certain 
limit, typically some hundred messages.
If it goes beyond that the whole bus will slow down to retain synchronism.

You could possibly get around it by creating more groups, or having this 
as differing instance from the rest of the group (falling back to group 
multicast), but it all depends on your needs and your design.

///jon

>
> Thanks,
>
> Asebot
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
